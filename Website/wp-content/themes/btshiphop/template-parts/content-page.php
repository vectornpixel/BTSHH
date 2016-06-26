<?php
/**
 * Template part for displaying page content in page.php.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package btshh
 */

?>
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
		background: url("<?php echo site_url(); ?>/wp-content/uploads/2016/06/5116930.png") no-repeat scroll 50% 80% #000;
		background-size: 100% 100%;
		-webkit-filter: grayscale(80%);
		filter: grayscale(20%);
		-ms-background-size: cover;
		-o-background-size: cover;
		-moz-background-size: cover;
		-webkit-background-size: cover;
	}
</style>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="head_container">
		<div class="container">
			<div class="headers">
				<div class="headers__image">
					<div class="headers__copy">
						<hr>
						<div class="top_title">
							<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
						</div>
						<hr>
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