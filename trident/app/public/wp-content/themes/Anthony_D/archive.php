<?php get_header(); ?>
 	<h1>Le blog Anthony_D</h1>

	<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>
  
		<article class="post">
			<h2><?php the_title(); ?></h2>
      
        	<?php the_post_thumbnail(); ?>
            
            <p class="post__meta">
                Publié le <?php the_time( get_option( 'date_format' ) ); ?> 
                par <?php the_author(); ?> • <?php comments_number(); ?>
            </p>
            
      		<?php the_excerpt(); ?>
              
      		<p>
                <a href="<?php the_permalink(); ?>" class="post__link">Lire la suite</a>
            </p>
		</article>

	<?php endwhile; endif; ?>
<?php get_footer(); ?>

<?php get_template_part( 'parts/newsletter' ); ?>

<?php
    /*
    Template Name: Full-width
    Template Post Type: post, page, product
    */
    get_header(); 
?>

<?php the_content(); ?>
<p>
    <strong>Avis :</strong> 
    <?php echo get_post_meta( get_the_ID(), 'avis', true ); ?>
</p>

<p>
    <strong>Note :</strong>
    <?php echo get_post_meta( get_the_ID(), 'note', true ); ?> / 10
</p>

<div class="plus-moins">
    <div class="plus">
        <?php echo get_post_meta( get_the_ID(), 'plus', true ); ?>
    </div>
    <div class="plus">
        <?php echo get_post_meta( get_the_ID(), 'moins', true ); ?>
    </div>
</div>

<?php
  get_header();
  if ( have_posts() ) : while ( have_posts() ) : the_post();
?>	
	<h1><?php the_title(); ?></h1>
	<?php the_post_thumbnail(); ?>
<?php
  endwhile;
  endif;
  get_footer();
?>

<?php get_header(); ?>

	<h1 class="site__heading">Le blog</h1>

	<div class="site__blog">
    	<main class="site__content">
        	<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>
            	<article class="post">
                    <!– … –>
                </article>
            <?php endwhile; endif; ?>
			<?php posts_nav_link(); ?>
        </main>

        <aside class="site__sidebar">
        	<ul>
            	<?php dynamic_sidebar( 'blog-sidebar' ); ?>
            </ul>
        </aside>
	</div> 
<?php get_footer(); ?>

<div class="site__navigation">
	<div class="site__navigation__prev">
		<?php previous_posts_link(); ?>
    </div>
    <div class="site__navigation__next">
        <?php next_posts_link(); ?> 
    </div>
</div>

<?php the_posts_pagination(); ?>

<div class="site__navigation">
	<div class="site__navigation__prev">
		<?php previous_posts_link( 'Page Précédente' ); ?>
    </div>
    <div class="site__navigation__next">
        <?php next_posts_link( 'Page Suivante' ); ?> 
    </div>
</div>

<?php 
$next_posts = get_next_posts_link(); 
$prev_posts = get_previous_posts_link();
