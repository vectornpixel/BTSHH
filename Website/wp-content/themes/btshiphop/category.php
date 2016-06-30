<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package btshh
 */

get_header(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<div class="head_container">
			<div class="container">
				<div class="headers">
					<div class="headers__image">
							<div class="headers__copy">
								<hr>
								<div class="top_title">
									<?php single_cat_title( '<h1 class="article_title entry-title">', '</h1>'); ?>
									<h4><?php echo category_description(); ?></h4>
								</div>
							</div>
					</div>
				</div>
			</div>
				</div>

			<?php
			while ( have_posts() ) : the_post();

				get_template_part( 'template-parts/content', 'home' );

				// If comments are open or we have at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) :
					comments_template();
				endif;

			endwhile; // End of the loop.
			?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
//get_sidebar();
get_footer();
