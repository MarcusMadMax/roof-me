<?php get_header()?>
      <?php 
          while ( have_posts() ) {
              the_post(); 
              get_template_part('partials/content', 'single-service');
          } // end while
      ?>
    </div>
<?php get_footer()?>
