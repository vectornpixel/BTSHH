<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package btshh
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#main"><?php esc_html_e( 'Skip to content', 'btshh' ); ?></a>

	<header id="masthead" class="site-header" role="banner">

		<div class="nav nav-top">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="logo_wrapper">
							<div class="logo_background">
								<div class="logo_image">
									<img class="img-responsive" src="http://localhost:8888/BTSHH/Website/wp-content/uploads/2016/06/btslogo.png">
								</div>
							</div>
						</div>
						<nav id="site-navigation" class="main-navigation" role="navigation">
						</nav><!-- #site-navigation -->
					</div>
					<div class="col-md-8">
						<div class="nav_wrapper">
							<div class="row">
								<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e( 'Primary Menu', 'btshh' ); ?></button>
								<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</header><!-- #masthead -->

	<div id="content" class="site-content">
