<div class="row">
    <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
        <h1><?php the_field('hero_header')?></h1>
        <h2><?php the_field('hero_text')?>.</h2>
    </div>
    <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
        <img src="<?php the_field('hero_image')?>" class="img-fluid animated" alt="">
    </div>
</div>