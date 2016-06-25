<?php
/**
 * Template part for displaying page content in page.php.
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
						<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="container">
	<div class="entry-content text-center text-justify">
		<?php
		the_content();

		wp_link_pages( array(
			'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'btshh' ),
			'after'  => '</div>',
		) );
		?>
	</div><!-- .entry-content -->
</div>


	<?php if ( get_edit_post_link() ) : ?>
		<footer class="entry-footer">
			<?php
				edit_post_link(
					sprintf(
						/* translators: %s: Name of current post */
						esc_html__( 'Edit %s', 'btshh' ),
						the_title( '<span class="screen-reader-text">"', '"</span>', false )
					),
					'<span class="edit-link">',
					'</span>'
				);
			?>
		</footer><!-- .entry-footer -->
	<?php endif; ?>
</article><!-- #post-## -->
