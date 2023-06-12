<?php
class Users extends CI_Controller
{
    //Register User
    public function register()
    {
        $data['title'] = 'Sign Up';

        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('username', 'Username', 'required|callback_check_username_exists');
        $this->form_validation->set_rules('email', 'Email', 'required|callback_check_email_exists');
        $this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[8]|regex_match[/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z])/]', array(
            'required' => 'Password field is required',
            'min_length' => 'Password must be at least 8 characters long',
            'regex_match' => 'Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character'
        ));
        
        $this->form_validation->set_rules('password2', 'Confirm Password', 'matches[password]');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('templates/header');
            $this->load->view('users/register', $data);
            //$this->load->view('templates/footer');
        } else {
            // Encrypt Password
            $enc_password = md5($this->input->post('password'));

            $this->user_model->register($enc_password);

            // Set Message
            $this->session->set_flashdata('user_registered', 'You are now registered and can log in');

            redirect('posts');
        }
    }

    //Login User
    public function login()
    {
        $data['title'] = 'Sign In';

        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('templates/header');
            $this->load->view('users/login', $data);
            //$this->load->view('templates/footer');
        } else {

            //Get Username
            $username = $this->input->post('username');
            //Get and Encrypt the password
            $password = md5($this->input->post('password'));
            //Login User
            $user_id = $this->user_model->login($username, $password);

            if ($user_id) {
                // Create Session
                $user_data = array(
                    'user_id' => $user_id,
                    'username' => $username,
                    'logged_in' => true
                );

                $this->session->set_userdata($user_data);
                // Set Message
                $this->session->set_flashdata('user_loggedin', 'You are now logged in');

                redirect('posts');
            } else {
                // Set Message
                $this->session->set_flashdata('login_failed', 'Login is invalid');

                redirect('users/login');
            }


        }
    }

    // Log User Out
    public function logout()
    {
        // Unser user data
        $this->session->unset_userdata('logged_in');
        $this->session->unset_userdata('user_id');
        $this->session->unset_userdata('username');

        // Set Message
        $this->session->set_flashdata('user_loggedout', 'You are now logged out');
        redirect('users/login');
    }

    public function check_username_exists($username)
    {
        $this->form_validation->set_message('check_username_exists', 'That username is taken. Please choose a different one');

        if ($this->user_model->check_username_exists($username)) {
            return true;
        } else {
            return false;
        }
    }

    public function check_email_exists($email)
    {
        $this->form_validation->set_message('check_email_exists', 'That email is taken. Please choose a different one');

        if ($this->user_model->check_email_exists($email)) {
            return true;
        } else {
            return false;
        }
    }
}