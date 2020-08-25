<?php
	class Users extends CI_Controller{
        public function register(){
            $this->form_validation->set_rules('username','username','required');
            $this->form_validation->set_rules('roll','Roll No.','required');

           if ($this->form_validation->run() === FALSE){
                $this->load->view('pages/home');
            } else {
                $this->page_model->register();
                $username = $this->input->post('username');
                $roll = $this->input->post('roll');
                $user_data['logged_in'] = true;
                $user_data['username'] = $username;
                $user_data['roll'] = $roll;
                

                $this->session->set_userdata($user_data);
                redirect('user');
    }
        }
        public function view(){
            $this->load->view('pages/user');
        }
        public function logout(){
            $this->session->unset_userdata('logged_in');
			$this->session->unset_userdata('roll');
            $this->session->unset_userdata('username');
            redirect('');
        }
    }