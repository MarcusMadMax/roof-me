<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">
    <img class="bg-image" src="<?php echo get_template_directory_uri()?>/assets/img/RoofMe-roof.jpg" alt="">
    <div class="container">

        <?php
            $args = array('post_type' => 'hero');
            //Get data (services) from database
            // The Query
            $the_query = new WP_Query( $args );
            
            // The Loop
                while ( $the_query->have_posts() ) {
                    $the_query->the_post();
                    get_template_part('partials/content','hero');
                }

            /* Restore original Post Data */
            wp_reset_postdata();

        ?>

    </div>
</section><!-- End Hero -->