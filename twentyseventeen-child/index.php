<?php

get_header(); ?>
    <?php echo do_shortcode( '[metaslider id="93"]' ); ?>
    <?php echo do_shortcode( "[products per_page='4' columns='4'  orderby='price']" ); ?>
<?php get_footer();
