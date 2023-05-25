<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>MyBlog</title>
      <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>">
      <link rel="stylesheet" href="<?php echo base_url('assets/css/style.css'); ?>">
      <link rel="stylesheet" href="<?php echo base_url('assets/js/owl.carousel.min.js'); ?>">
      <link rel="stylesheet" href="<?php echo base_url('assets/fontawesome/css/all.css'); ?>">
      <script src="<?php echo base_url('assets/ckeditor1/ckeditor.js'); ?>"></script>
      <link rel="icon" href="<?php echo base_url('assets/images/attribute/Logo.png'); ?>">
      <script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
   </head>
   <body>
      <header>
         <nav class="navbar navbar-inverse">
            <div class="container">
               <div class="navbar-header">
                  <a class="navbar-brand" href="<?php echo base_url(); ?>">MyBlog</a>
               </div>
               <div id="navbar">
                  <ul class="nav navbar-nav">
                     <li><a href="<?php echo base_url(); ?>">Home</a></li>
                     <li><a href="<?php echo base_url('about'); ?>">About</a></li>
                     <li><a href="<?php echo base_url('posts'); ?>">Blog</a></li>
                     <li><a href="<?php echo base_url('categories'); ?>">Categories</a></li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
                     <?php if(!$this->session->userdata('logged_in')): ?><li><a href="<?php echo base_url('users/login'); ?>">Login</a></li>
                     <li><a href="<?php echo base_url('users/register'); ?>">Register</a></li>
                     <?php endif; ?>
                     <?php if ($this->session->userdata('logged_in')): ?><li><a href="<?php echo base_url('posts/create'); ?>">Create Post</a></li>
                     <li><a href="<?php echo base_url('categories/create'); ?>">Create Category</a></li>
                     <li><a href="<?php echo base_url('users/logout'); ?>">Logout</a></li>
                     <?php endif; ?>
                  </ul>
               </div>
            </div>
         </nav>
      </header>
      <div class="container">
         <?php $this->load->view('templates/flash_messages'); ?>
      </div>
