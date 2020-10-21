<?php
    $terms = get_the_terms( get_the_ID(), 'type' );

    $classes = '';
    foreach($terms as $term){
        $classes .= $term->slug . ' ';
    }

?>
<div class="mb-3 pics animation 1 tab-pane fade show active  <?php echo $classes?>" id="pills-endura" role="tabpanel" aria-labelledby="pills-endura-tab">
    <img class="img-fluid" src="<?php the_field('image')?>" alt="Sorry no image here">
    <div><?php the_field('summary')?></div>
</div>
