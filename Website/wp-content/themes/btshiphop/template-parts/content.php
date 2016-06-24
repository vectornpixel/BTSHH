<?php
/**
 * Template part for displaying posts.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package btshh
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="headers">
		<div class="headers__image">
			<div class="container">
				<div class="headers__copy">
					<div class="top_title">
						<?php
						if ( is_single() ) {
							the_title( '<h1 class="entry-title">', '</h1>' );
						} else {
							the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
						} ?>
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
		<?php btshh_entry_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-## -->
