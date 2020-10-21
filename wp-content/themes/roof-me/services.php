 <!-- ======= Service Section ======= -->
<section id="about" class="about">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Services</h2>
    </div>

    <div class="row content">

      <?php
          //Get data (services) from database
          $args = array('post_type' => 'services');
          // The Query
          $the_query = new WP_Query( $args );

          // The Loop
              while ( $the_query->have_posts() ) {
                  $the_query->the_post();
                  get_template_part('partials/content','services');
              }

          /* Restore original Post Data */
          wp_reset_postdata();

      ?>

    </div>
  </div>
</section><!-- End Service Section -->