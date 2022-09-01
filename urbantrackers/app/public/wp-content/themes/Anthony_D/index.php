<!-- https://capitainewp.io/formations/developper-theme-wordpress/boucle-wordpress-template-tags/ -->

<!DOCTYPE html>
<html>
<head></head>
<body>
<?php get_header(); ?>

<body <?php body_class(); ?>>
  <header class="header">
    <a href="<?php echo home_url( '/' ); ?>">
      <img src="<?php echo get_template_directory_uri(); ?>/img/Trident2-0.png" alt="Logo">
    </a>  
  </header>

<h1>Coucou</h1>

<?php get_footer(); ?>
</body>
</html>