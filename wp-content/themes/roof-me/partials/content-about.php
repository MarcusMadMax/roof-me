<div class="container" data-aos="fade-up">
    <div class="section-title">
        <h2><?php the_field('about_header')?></h2>
        <h3><?php the_field('about_sub_header')?></h3>
    </div>
    <div class="row content">
        <div class="col-lg-12">
            <p><?php the_field('about_text')?></p>
            <h2><?php the_field('about_second_header')?></h2>
            <div class="get-in-touch d-flex flex-row"><?php the_field('about_list')?>
            </div>
        </div>
    </div>
</div>