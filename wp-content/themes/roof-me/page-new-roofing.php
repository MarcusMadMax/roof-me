<?php get_header()?>
  <!-- ======= About Us Section ======= -->
  <?php 
            while ( have_posts() ) {
                the_post(); 
                get_template_part('partials/content','index');
            } // end while
        ?>
  </section><!-- End About Us Section -->


  <!-- ======= Lightbox ======= -->
  <div class="row justify-content-center">
    <div class="col-md-9">
      <div class="row">
        <a href="<?php echo get_template_directory_uri()?>/assets/img/roof-me1.png" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 mb-4">
          <img src="<?php echo get_template_directory_uri()?>/assets/img/roof-me1.png" class="img-fluid">
        </a>
        <a href="<?php echo get_template_directory_uri()?>/assets/img/roof-me2.png" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 mb-4">
          <img src="<?php echo get_template_directory_uri()?>/assets/img/roof-me2.png" class="img-fluid">
        </a>
        <a href="<?php echo get_template_directory_uri()?>/assets/img/roof-me3.png" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 mb-4">
          <img src="<?php echo get_template_directory_uri()?>/assets/img/roof-me3.png" class="img-fluid">
        </a>
        <a href="<?php echo get_template_directory_uri()?>/assets/img/roof-me4.png" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 mb-4">
          <img src="<?php echo get_template_directory_uri()?>/assets/img/roof-me4.png" class="img-fluid">
        </a>
        <a href="<?php echo get_template_directory_uri()?>/assets/img/roof-me5.png" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 mb-4">
          <img src="<?php echo get_template_directory_uri()?>/assets/img/roof-me5.png" class="img-fluid">
        </a>
        <a href="<?php echo get_template_directory_uri()?>/assets/img/roof-me6.png" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 mb-4">
          <img src="<?php echo get_template_directory_uri()?>/assets/img/roof-me6.png" class="img-fluid">
        </a>
        <a href="<?php echo get_template_directory_uri()?>/assets/img/roof-me7.png" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 mb-4">
          <img src="<?php echo get_template_directory_uri()?>/assets/img/roof-me7.png" class="img-fluid">
        </a>
        <a href="<?php echo get_template_directory_uri()?>/assets/img/roof-me8.png" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 mb-4">
          <img src="<?php echo get_template_directory_uri()?>/assets/img/roof-me8.png" class="img-fluid">
        </a>
      </div>
    </div>
  </div><!-- End Lightbox -->
  <main id="main">

    <!-- ======= Cliens Section ======= -->
    <section id="cliens" class="cliens section-bg">
      <div class="container">

        <div class="row" data-aos="zoom-in">

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/colorcote2.gif" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/colorsteel.gif" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/Hazard-Co.gif" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/konnect.gif" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/nzsteel1.gif" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
            <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/roofingindustries.jpg" class="img-fluid" alt="">
          </div>

        </div>

      </div>
    </section><!-- End Cliens Section -->

  </main><!-- End #main -->
  <?php get_footer()?>
