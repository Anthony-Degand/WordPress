<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
   <title><?php bloginfo('name'); ?> &raquo; <?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>
   <meta charset="<?php bloginfo( 'charset' ); ?>">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Aboreto&display=swap" rel="stylesheet">
   <?php wp_head(); ?>
 </head>
 <body <?php body_class(); ?>>
   <header class="my-logo">
   <?php wp_nav_menu( array( 'header-menu' => 'header-menu' ) ); ?>
   <a class="trident" href="<?php bloginfo("/"); ?>"><span class=t>T</span>rident</a>
   <h2 class="slogant"><?php echo('Discover the underwater life'); ?></h2>
 </header>
 