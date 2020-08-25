<?php
	class Page_model extends CI_Model{
		public function register(){
			$data = array(
                'username' => $this->input->post('username'),
                'roll' => $this->input->post('roll')
			);

			return $this->db->insert('users',$data);
        }
    }