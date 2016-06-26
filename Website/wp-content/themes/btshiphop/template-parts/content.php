<?php
/**
 * Template part for displaying posts.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package btshh
 */

?>
<?php
if ( is_singular() && has_post_thumbnail( $post->ID )) :
	$thumb_id = get_post_meta($post->ID, '_thumbnail_id', true);
	$thumb_url = wp_get_attachment_url($thumb_id); ?>
	<style type="text/css">
		.headers:before{
			height:100%;
			content: ' ';
			display: block;
			position: absolute;
			left: 0;
			top: 0;
			width: 100%;
			z-index: 1;
			opacity: 0.2;
			background: url("<?php echo $thumb_url ;?>") no-repeat scroll 50% 80%;
			background-size: 100% 100%;
			-webkit-filter: grayscale(80%);
			filter: grayscale(20%);
			-ms-background-size: cover;
			-o-background-size: cover;
			-moz-background-size: cover;
			-webkit-background-size: cover;
		}

	</style>
<?php endif;
?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="head_container">
		<div class="container">
			<div class="headers">
				<div class="headers__image">
					<? //the_post_thumbnail('full', array('class' => 'img-responsive')); ?>
						<div class="headers__copy">
							<div class="category_title">
								<?php $categories_list = get_the_category_list( esc_html__( ', ', 'btshh' ) );
								if ( $categories_list && btshh_categorized_blog() ) {
									printf( $categories_list ); // WPCS: XSS OK.
								} ?>
							</div>
							<hr>
							<div class="top_title">
								<?php
								if ( is_single() ) {
									the_title( '<h1 class="entry-title">', '</h1>' );
								} else {
									the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
								} ?>
							</div>

							<hr>
						</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container">
	<header class="entry-header">

		<?php
		if ( 'post' === get_post_type() ) : ?>
			<div class="entry-meta text-center">
				<?php btshh_posted_on(); ?>
			</div><!-- .entry-meta -->
			<?php
		endif; ?>
	</header><!-- .entry-header -->

	<div class="entry-content text-center text-justify">

			<?php
			the_content( sprintf(
			/* translators: %s: Name of current post. */
				wp_kses( __( 'Continue reading %s <span class="meta-nav">&rarr;</span>', 'btshh' ), array( 'span' => array( 'class' => array() ) ) ),
				the_title( '<span class="screen-reader-text">"', '"</span>', false )
			) );

			wp_link_pages( array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'btshh' ),
				'after'  => '</div>',
			) );
			?>


	</div><!-- .entry-content -->
</div>
	<footer class="entry-footer">
		<div class="container">
			<?php //btshh_entry_footer(); ?>
		</div>

	</footer><!-- .entry-footer -->
</article><!-- #post-## -->
