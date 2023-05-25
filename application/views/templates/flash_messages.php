<!-- Flash messages -->
<?php if ($this->session->flashdata('user_registered')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('user_registered'); ?>
</p>
<?php
   $this->session->set_flashdata('user_registered', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('post_created')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('post_created'); ?>
</p>
<?php
   $this->session->set_flashdata('post_created', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('post_updated')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('post_updated'); ?>
</p>
<?php
   $this->session->set_flashdata('post_updated', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('category_created')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('category_created'); ?>
</p>
<?php
   $this->session->set_flashdata('category_created', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('post_deleted')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('post_deleted'); ?>
</p>
<?php
   $this->session->set_flashdata('post_deleted', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('login_failed')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('login_failed'); ?>
</p>
<?php
   $this->session->set_flashdata('login_failed', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('user_loggedin')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('user_loggedin'); ?>
</p>
<?php
   $this->session->set_flashdata('user_loggedin', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('user_loggedout')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('user_loggedout'); ?>
</p>
<?php
   $this->session->set_flashdata('user_loggedout', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('category_deleted')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('category_deleted'); ?>
</p>
<?php
   $this->session->set_flashdata('category_deleted', '');
   ?>
<?php endif; ?>
<?php if ($this->session->flashdata('category_deleted')): ?>
<p class="alert alert-success">
   <?php echo $this->session->flashdata('category_created'); ?>
</p>
<?php
   $this->session->set_flashdata('category_created', '');
   ?>
<?php endif; ?>