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

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<div class="head_container">
				<div class="container">
			<div class="headers">
				<div class="headers__image">
					<div class="container">
						<div class="headers__copy">
							<div class="top_title">
								<h1>Highlighting the Artist behing the Artists.</h1>

							</div>
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
