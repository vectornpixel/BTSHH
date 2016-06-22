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
	<header class="entry-header">
		<div class="container">
			<div class="row">
					<div class="article_wrapper">
						<div class="article_background">
							<div class="col-md-4">
								<div class="article_meta">
									<?php
									if ( 'post' === get_post_type() ) : ?>
										<div class="entry-meta article_date">
											<p><?php btshh_posted_on(); ?></p>
										</div>
										<?php
										if ( is_single() ) {
											the_title( '<h1 class="article_title entry-title">', '</h1>' );
										} else {
											the_title( '<h2 class="article_title entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
										}
										?>
										<?php
									endif; ?>
								</div>
							</div>

							<div class="col-md-8">
								<div class="article_media">
									<div class="article_tag">
										<span class="article_tag-block"></span>
										<span class="article_tag-block"></span>
										<span class="article_tag-title"></span>
									</div>
									<div class="article_media-image">
										<?php the_post_thumbnail('full', array('class' => 'img-responsive')) ?>
									</div>
								</div>
							</div>

						</div>
					</div>
			</div>
		</div>

	</header><!-- .entry-header -->

	<div class="entry-content">
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

	<footer class="entry-footer">
		<?php btshh_entry_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-## -->
