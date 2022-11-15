<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class UserSeeder extends Seeder
{
    public function run()
    {
        $data = [
            'name'      => 'admin',
            'email'     => 'admin@admin.test',
            'phone'     => '085157573144',
            'password'  => password_hash('12345678', PASSWORD_DEFAULT),
        ];
        $this->db->table('users')->insert($data);
    }
}
