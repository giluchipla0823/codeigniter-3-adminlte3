<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller
{
    /**
     * Mostrar página de login.
     *
     */
    public function index(){
        $this->load->view('auth/login/index_view');
    }

    /**
     * Autenticación de usuarios.
     *
     */
    public function authenticate(){
        $request = $this->input->post();

        $email = $request['email'];
        $password = $request['password'];

        $this->setRules();

        $this->load->model('User_model');

        if(!$this->User_model->authenticate($email, $password)){
            $this->session->set_flashdata(
                'error_login',
                'Las credenciales de acceso no son correctas.'
            );

            return redirect(base_url('login'));
        }

        redirect(base_url('dashboard'));
    }

    /**
     * Reglas de validación de formulario de login.
     *
     */
    private function setRules(){
        $rules = array(
            array(
                'field' => 'email',
                'label' => 'correo electrónico',
                'rules' => 'required|trim|valid_email'
            ),
            array(
                'field' => 'password',
                'label' => 'contraseña',
                'rules' => 'required|trim'
            )
        );

        $this->form_validation->set_rules($rules);
        $this->form_validation->set_message("valid_email", "El campo %s debe ser un email válido.");
        $this->form_validation->set_message("required", "El campo %s es requerido.");
    }
}