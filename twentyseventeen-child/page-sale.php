<?php

/*
Template Name: Sale Template
*/
?>
<?php get_header(); ?>

<?php/*** get sale products in loop**/?>
    <!--    <ul class="products columns-4">-->
    <!--        --><?php
//        $product_ids_on_sale = wc_get_product_ids_on_sale();
//
//        $args = array(
//            'post_type' => 'product',
//            'post__in' => array_merge( array( 0 ), $product_ids_on_sale )
//        );
//        $loop = new WP_Query( $args );
//        if ( $loop->have_posts() ) {
//            while ( $loop->have_posts() ) : $loop->the_post();
//                wc_get_template_part( 'content', 'product' );
//            endwhile;
//        } else {
//            echo __( 'Products not found' );
//        }
//        wp_reset_postdata();
//        ?>
    <!--    </ul><!--/.products-->
<?php /*** get sale products a shortcode**/?>
<?php echo do_shortcode( "[sale_products per_page='12' columns='4']" ); ?>

<?php get_footer();