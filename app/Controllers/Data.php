<?php
namespace App\Controllers;

class Data extends BaseController{
    public function __construct(){
        helper('form');
        $this->form_validation = \Config\Services::validation();
    }

    // Refresh Token
    public function refreshToken(){        
        // Generate new Token
        $data = csrf_hash();
        return $data;
    }
}