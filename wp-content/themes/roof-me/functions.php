<?php
   function register_resource() {
   register_nav_menu('header-menu',__( 'Header Menu' ));
   }
   add_action( 'init', 'register_resource' );

    $args = array(
        'public'    => true,
        'label'     => 'Hero',
        'menu_icon' => 'dashicons-universal-access-alt',
    );
    register_post_type( 'hero', $args );

    $args = array(
        'public'    => true,
        'label'     => 'About',
        'menu_icon' => 'dashicons-buddicons-buddypress-logo',
    );
    register_post_type( 'about', $args );

    function add_class_to_li( $classes, $item, $args ) {

        $classes[] = 'nav-item';
        return $classes;
    }
    add_filter( 'nav_menu_css_class' , 'add_class_to_li' , 10, 4 );


    function add_class_to_anchors( $atts ) {
        $atts['class'] = 'nav-link';
        return $atts;
    }
    add_filter( 'nav_menu_link_attributes', 'add_class_to_anchors', 10 );
 
?>