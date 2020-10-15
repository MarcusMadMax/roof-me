<?php get_header()?>
    <main id="main">

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Contact us for new roofing needs</h2>
                    <p>Roof Me is based in Whangaparaoa, Hibiscus Coast but we service North Auckland to South Auckland.
                        Work outside or Auckland can also be discussed. Specialising in Re Roofing & New Roofing using
                        quality COLORSTEEL® / COLORCOTE® products. We would be pleased to supply you with a free no
                        obligation quote for your roofing needs <span>Please note: We do not carry out Roof painting or
                            treatments.</span></p>
                </div>
                <h2>Please complete the form below</h2>
                <div class="row">
                    <div class="col-lg-5 d-flex align-items-stretch">
                        <div class="info">
                            <div class="address">
                                <i class="icofont-google-map"></i>
                                <h4>Location:</h4>
                                <p>47 Cape Cod Drive, Gulf Harbour Whangaparaoa 0930</p>
                            </div>

                            <div class="email">
                                <i class="icofont-envelope"></i>
                                <h4>Email:</h4>
                                <p>roofme@gmail.co.nz</p>
                            </div>

                            <div class="phone">
                                <i class="icofont-phone"></i>
                                <h4>Call:</h4>
                                <p>0273 444 349</p>
                            </div>

                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3202.3199753676454!2d174.79794831570896!3d-36.61868387998641!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d2f0e973c9edf%3A0x86f875872894e5ad!2s47%20Cape%20Cod%20Drive%2C%20Gulf%20Harbour%2C%20Auckland%200930!5e0!3m2!1sen!2snz!4v1602720316334!5m2!1sen!2snz"
                            frameborder="0" style="border:0; width:100%; height:290px;"  allowfullscreen>
                            </iframe>
                        </div>

                    </div>

                    <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
                        <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="name">Your Name</label>
                                    <input type="text" name="name" class="form-control" id="name" data-rule="minlen:4"
                                        data-msg="Please enter at least 4 chars" />
                                    <div class="validate"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="name">Your Email</label>
                                    <input type="email" class="form-control" name="email" id="email" data-rule="email"
                                        data-msg="Please enter a valid email" />
                                    <div class="validate"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name">Subject</label>
                                <input type="text" class="form-control" name="subject" id="subject" data-rule="minlen:4"
                                    data-msg="Please enter at least 8 chars of subject" />
                                <div class="validate"></div>
                            </div>
                            <div class="form-group">
                                <label for="name">Message</label>
                                <textarea class="form-control" name="message" rows="10" data-rule="required"
                                    data-msg="Please write something for us"></textarea>
                                <div class="validate"></div>
                            </div>
                            <div class="mb-3">
                                <div class="loading">Loading</div>
                                <div class="error-message"></div>
                                <div class="sent-message">Your message has been sent. Thank you!</div>
                            </div>
                            <div class="text-center"><button type="submit">Send Message</button></div>
                        </form>
                    </div>

                </div>

            </div>
        </section><!-- End Contact Section -->

        <!-- ======= Cliens Section ======= -->
        <section id="cliens" class="cliens section-bg">
            <div class="container">

                <div class="row" data-aos="zoom-in">

                    <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                        <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/colorcote2.gif" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                        <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/colorsteel.gif" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                        <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/Hazard-Co.gif" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                        <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/konnect.gif" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                        <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/nzsteel1.gif" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
                        <img src="<?php echo get_template_directory_uri()?>/assets/img/logos/roofingindustries.jpg" class="img-fluid" alt="">
                    </div>

                </div>

            </div>
        </section><!-- End Cliens Section -->

    </main><!-- End #main -->
<?php get_footer()?>