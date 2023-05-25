<div class="container">
        <div class="row">
            <div class="col-md-8">
              <h2 class="mb-3">
                  <?= $title ?>
              </h2>
              <p class="lead">Welcome to MyBlog!</p>
              <p>MyBlog is a website that I created for my Web Programming II course. Here, you will find various posts that I
                  have written about topics that interest me. My goal is to share my thoughts and ideas with others and to create
                  a space for meaningful conversations.
              </p>
              <p>Whether you are looking for information or inspiration, you will find it here. Feel free to explore the
                  different categories and tags to find the content that suits your interests. You can also leave comments on my
                  posts to share your thoughts and feedback.
              </p>
              <p>Thank you for visiting MyBlog. I hope you enjoy reading my posts as much as I enjoy writing them!</p>
            </div>
        </div>
      </div>
      <!-- Page Content -->
      <!-- Banner Starts Here -->
      <div class="banner header-text">
        <div class="owl-banner owl-carousel">
            <div class="banner-item">
              <div class="text-content">
                  <h4>Inspiring ideas, insightful stories!</h4>
                  <h2>Connecting Minds, Sharing Perspectives</h2>
              </div>
            </div>
        </div>
      </div>
      <!-- Banner Ends Here -->
      <div class="best-features">
        <div class="container">
            <div class="row">
              <div class="col-md-12">
                  <div class="section-heading">
                    <h2>About Us</h2>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="left-content">
                    <p>Welcome to MyBlog, a website created as part of our Web Programming II course. We aim to provide a platform
                        where we can share our thoughts, insights, and experiences with you. Our goal is to create a community of
                        like-minded individuals who are passionate about the topics we cover on this blog.<br> <br>At
                        MyBlog, we strive to provide a platform where readers can access a wealth of information on various topics.
                        As part of our efforts to create a seamless experience for our users, we have developed several pages that cater to
                        different aspects of our website, including: 
                    </p>
                    <ul class="featured-list">
                        <li><a href="<?php echo base_url(); ?>">Home Page</a></li>
                        <li><a href="<?php echo base_url('posts'); ?>">Blog Page</a></li>
                        <li><a href="<?php echo base_url('categories'); ?>">Category Page</a></li>
                        <li><a href="<?php echo base_url('users/register'); ?>">Register</a></li>
                    </ul>
                    <a href="<?php echo base_url('about'); ?>" class="filled-button">Read More</a>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="right-image">
                    <img src="<?php echo site_url(); ?>assets/images/attribute/About.jpg" alt="">
                  </div>
              </div>
            </div>
        </div>
      </div>
    <script src="<?php echo base_url(); ?>assets/js/banner.js"></script>