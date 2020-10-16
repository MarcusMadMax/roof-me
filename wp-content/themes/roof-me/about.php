<!-- ======= About Section ======= -->
<section id="about" class="roofing-specialist">

    <?php
    $args = array('post_type' => 'about');
    //Get data (services) from database
    // The Query
    $the_query = new WP_Query( $args );

    // The Loop
        while ( $the_query->have_posts() ) {
            $the_query->the_post();
            get_template_part('partials/content','about');
        }

    /* Restore original Post Data */
    wp_reset_postdata();

    ?>

</section><!-- End About Us Section -->