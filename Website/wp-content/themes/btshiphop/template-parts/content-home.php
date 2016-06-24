<?php
/**
 * Template part for displaying posts.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package btshh
 */

?>
<div class="headers">
	<div class="headers__image">
		<div class="container">
			<div class="headers__copy">
				<div class="top_title">

				</div>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<div class="container">
			<div class="row no-gutters flexbox">
							<div class="col-md-4 sec">
								<div class="article_wrapper">
									<div class="article_background">
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
								</div>
							</div>

							<div class="col-md-8 sec">
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

	</header><!-- .entry-header -->

</article><!-- #post-## -->
