<?php get_header()?>
  <!-- ======= About Us Section ======= -->
  <section id="about" class="about">
    <div class="container" data-aos="fade-up">

    <?php 
            while ( have_posts() ) {
                the_post(); 
                get_template_part('partials/content', 'single-service');
            } // end while
        ?>

  </section><!-- End About Us Section -->
  <?php get_footer()?>
