<?php
    $args = array('post_type' => 'service');
    //Get data (services) from database
    // The Query
    $the_query = new WP_Query( $args );
    
    // The Loop
        while ( $the_query->have_posts() ) {
            $the_query->the_post();
            get_template_part('partials/content','service');
        }

    /* Restore original Post Data */
    wp_reset_postdata();

    //render each service using template

?>