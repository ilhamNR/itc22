<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\UserModel;
use App\Models\EventModel;
class AuthController extends BaseController
{
    public function index()
    {
        helper(['form']);
        return view('login');
    } 
 
    public function login()
    {
        $session = session();
        $model = new UserModel();
        $email = $this->request->getVar('email');
        $password = $this->request->getVar('password');
        $data = $model->where('email', $email)->first();
        if($data){
            $pass = $data['password'];
            $verify_pass = password_verify($password, $pass);
            if($verify_pass){
                $ses_data = [
                    'id'       => $data['id'],
                    'name'     => $data['name'],
                    'email'    => $data['email'],
                    'logged_in'     => TRUE
                ];
                $session->set($ses_data);
                return redirect()->to('/admin/dashboard');
            }else{
                $session->setFlashdata('msg', 'Wrong Password');
                return redirect()->to('/login');
            }
        }else{
            $session->setFlashdata('msg', 'Email not Found');
            return redirect()->to('/login');
        }
    }
 
    public function logout()
    {
        $session = session();
        $session->destroy();
        return redirect()->to('/login');
    }
    public function registration(){
        $nama = filter_var($this->request->getVar('nama'), FILTER_SANITIZE_STRING);
        $email = filter_var($this->request->getVar('email'), FILTER_SANITIZE_EMAIL);

        $model 		= new EventModel();
        $check_email= $model->check_email($email);
        if($check_email){
            $data = [
                'success' => false,
                'msg' => "Email sudah terdaftar."
            ];
        } else {
            $peserta = [
                'name' => $nama,
                'email' => $email,
                'idEvents' => 1
            ];
            $data = $model->listing();
            $batas = strtotime(date("18-10-2022 23:59:59"));
            $sekarang = strtotime(date("d-m-Y H:i:s"));
            if($batas >= $sekarang){  
                $emailTemplate = view("email.php");
                $emailTemplate = str_replace("[nama]",$nama,$emailTemplate);
                $email_smtp = \Config\Services::email();
                $email_smtp->setFrom("noreply@hmtiudinus.org", "HMTI UDINUS");
                $email_smtp->setTo("$email");
                $email_smtp->setSubject("Pendaftaran PAA 2022");
                // $email_smtp->setMessage("<div>Halo, $nama</div><div><br /></div><div>Terimakasih telah mendaftar sebagai Peserta di acara SEMNASTI 2022. Untuk para peserta diharapkan untuk bergabung kedalam whatsapp group agar mendapatkan informasi-informasi terbaru.</div><div>Berikut link whatsapp group :</div><div><br /></div><div>(Kasih tau nggak yaa xixixi)</div><div><br /></div><div>Salam, SEMNASTI 2022</div>");
                $email_smtp->setMessage($emailTemplate);
                $kirim = $email_smtp->send();
                if($kirim){
                    $model->add($peserta);
                    $data = [
                        'success' => true,
                        'msg' => "Terima kasih telah bergabung dengan kami. Silahkan cek email Anda (inbox/spam) untuk informasi lebih lanjut."
                    ];
                } else {
                    $data = [
                        'success' => false,
                        'msg' => $email_smtp->printDebugger()
                    ];
                }             
            } else {
                $data = [
                    'success' => false,
                    'msg' => "Mohon maaf, waktu pendaftaran sudah ditutup."
                ];
            }
        }
         
        return $this->response->setJSON($data);
    }

    public function reminder(){
		$method = $_SERVER['REQUEST_METHOD'];
		if($method == "POST"){
            $db = \Config\Database::connect();
            $select = $this->request->getVar('selection');
            $total = 0;
            if($select == ""){
                session()->setFlashdata('error', 'Silahkan pilih reminder terlebih dahulu');
            }            
            if ($select == "H-3") {
                $query1   = $db->query('SELECT name, email FROM dataevents WHERE idEvents ='.$this->request->getPost('idEvents'));
                $results1 = $query1->getResult();
                foreach ($results1 as $row) {
                    $emailTemplate = view("emailH3.php");
                    $emailTemplate = str_replace("[nama]", $row->name, $emailTemplate);
                    $email_smtp = \Config\Services::email();
                    $email_smtp->setFrom("noreply@hmtiudinus.org", "HMTI UDINUS");
                    $email_smtp->setTo("$row->email");
                    $email_smtp->setSubject("📢REMINDER PAA 2022📢");
                    $email_smtp->setMessage($emailTemplate);
                    $kirim = $email_smtp->send();
                    $total++;
                }
                if ($total == count($results1)) {
                    session()->setFlashdata('success', 'Berhasil mengirim reminder');
                    return redirect()->to(base_url()."/admin/masterevents");
                } else {
                    session()->setFlashdata('inputs', $this->request->getPost());
                    session()->setFlashdata('error', 'Gagal mengirim reminder, silahkan coba lagi');
                    return redirect()->to(base_url()."/admin/masterevents");
                }
            } elseif ($select == "Lolos") {
                $query1   = $db->query('SELECT name, email FROM dataevents WHERE idEvents ='.$this->request->getPost('idEvents').' AND `status` = "1"');
                $results1 = $query1->getResult();
                foreach ($results1 as $row) {
                    $emailTemplate = view("emailLolos.php");
                    $emailTemplate = str_replace("[nama]", $row->name, $emailTemplate);
                    $email_smtp = \Config\Services::email();
                    $email_smtp->setFrom("noreply@hmtiudinus.org", "HMTI UDINUS");
                    $email_smtp->setTo("$row->email");
                    $email_smtp->setSubject("Pengumuman PAA 2022");
                    $email_smtp->setMessage($emailTemplate);
                    $kirim = $email_smtp->send();
                    $total++;
                }
                if ($total == count($results1)) {
                    session()->setFlashdata('success', 'Berhasil mengirim reminder');
                    return redirect()->to(base_url()."/admin/masterevents");
                } else {
                    session()->setFlashdata('inputs', $this->request->getPost());
                    session()->setFlashdata('error', 'Gagal mengirim reminder, silahkan coba lagi');
                    return redirect()->to(base_url()."/admin/masterevents");
                }
            } elseif ($select == "Tidak Lolos") {
                $query1   = $db->query('SELECT name, email FROM dataevents WHERE idEvents ='.$this->request->getPost('idEvents').' AND `status` = "2"');
                $results1 = $query1->getResult();
                foreach ($results1 as $row) {
                    $emailTemplate = view("emailTidakLolos.php");
                    $emailTemplate = str_replace("[nama]", $row->name, $emailTemplate);
                    $email_smtp = \Config\Services::email();
                    $email_smtp->setFrom("noreply@hmtiudinus.org", "HMTI UDINUS");
                    $email_smtp->setTo("$row->email");
                    $email_smtp->setSubject("Pengumuman PAA 2022");
                    $email_smtp->setMessage($emailTemplate);
                    $kirim = $email_smtp->send();
                    $total++;
                }
                if ($total == count($results1)) {
                    session()->setFlashdata('success', 'Berhasil mengirim reminder');
                    return redirect()->to(base_url()."/admin/masterevents");
                } else {
                    session()->setFlashdata('inputs', $this->request->getPost());
                    session()->setFlashdata('error', 'Gagal mengirim reminder, silahkan coba lagi');
                    return redirect()->to(base_url()."/admin/masterevents");
                }
            } else {
                session()->setFlashdata('inputs', $this->request->getPost());
                session()->setFlashdata('error', 'Tidak ada pilihan');
                return redirect()->to(base_url()."/admin/masterevents");
            }
        }
    }

    public function lolos($id = null){
        $db = \Config\Database::connect();
        $query1   = $db->query('SELECT name, email, idEvents FROM dataevents WHERE id = '.$id);
        $results1 = $query1->getResult();
        
        $event = new EventModel();

        $query = [
            "status" => 1
        ];
        $event->update($id,$query);
        session()->setFlashdata('success', 'Berhasil merubah status');
        return redirect()->to(base_url()."/admin/masterevents");
    }

    public function tdkLolos($id = null){
        $db = \Config\Database::connect();
        $query1   = $db->query('SELECT name, email, idEvents FROM dataevents WHERE id = '.$id);
        $results1 = $query1->getResult();
        
        $event = new EventModel();

        $query = [
            "status" => 2
        ];
        $event->update($id,$query);
        session()->setFlashdata('success', 'Berhasil merubah status ke tdk Lolos');
        return redirect()->to(base_url()."/admin/masterevents");
    }
}
