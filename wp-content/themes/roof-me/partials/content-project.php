<?php
$terms = get_the_terms( get_the_ID(), 'type' );

$classes = '';
foreach($terms as $term){
    $classes .= $term->slug . ' ';
}

?>

<div class="mb-3 pics animation 1 tab-pane fade show active" id="pills-endura" role="tabpanel <?php echo $classes?>"
    aria-labelledby="pills-endura-tab">
    <img class="img-fluid" src="<?php the_field('image')?>" alt="Card image cap">
    <div><?php the_field('summary')?></div>
</div>