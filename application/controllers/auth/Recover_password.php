<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Recover_password extends CI_Controller
{
    const METHOD_POST = 'post';

    public function __construct()
    {
        parent::__construct();

        $this->load->model('Password_resets_model');
    }

    public function index(){
        if(!$token = $this->input->get('token')){
            show_404();
        }

        $model = $this->Password_resets_model->find(array('token' => $token));

        if($this->session->userdata('finish_recover_password') === false && !$model){
            throw new Exception(
                "No existe una solicitud de cambio de contraseña con el token proporcionado."
                , 400
            );
        }

        if($this->input->method() === self::METHOD_POST && $this->processedForm($model)){
            return redirect(base_url('recover-password') . "?token={$token}");
        }

        $this->session->set_userdata('finish_recover_password', false);

        $this->load->view('auth/recover_password/index_view');
    }

    public function processedForm($model){
        $password = $this->input->post('password');

        $this->setRules();

        if(!$this->form_validation->run()){
            return false;
        }

        // Actualizar la contraseña.
        $this->load->model('User_model');

        if(!$this->User_model->updatePassword($model->email, $password)){
            $this->session->set_flashdata(
                'error',
                'Ocurrió un problema al actualizar la contraseña del usuario.'
            );

            return false;
        }

        // Eliminar el token utilizado.
        if(!$this->Password_resets_model->delete($model->email, $model->token)){
            $this->session->set_flashdata(
                'error',
                'Ocurrió un problema al eliminar el token del usuario después de actualizar su contraseña.'
            );

            return false;
        }

        $this->session->set_flashdata(
            'success',
            "Tu contraseña se cambió correctamente."
        );

        $this->session->set_userdata('finish_recover_password', true);

        return true;
    }

    public function setRules(){
        $rules = array(
            array(
                'field' => 'password',
                'label' => 'contraseña',
                'rules' => 'required|trim|min_length[6]|max_length[50]'
            ),
            array(
                'field' => 'confirm_password',
                'label' => 'confirmar contraseña',
                'rules' => 'required|trim|matches[password]'
            )
        );

        $this->form_validation->set_rules($rules);
    }
}