<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package btshh
 */

?>

	</div><!-- #content -->

<div id="footer-sidebar" class="secondary site-footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<?php
				if(is_active_sidebar('footer-sidebar-1')){
					dynamic_sidebar('footer-sidebar-1');
				}
				?>
			</div>
			<div class="col-md-4">
				<?php
				if(is_active_sidebar('footer-sidebar-2')){
					dynamic_sidebar('footer-sidebar-2');
				}
				?>
			</div>
			<div class="col-md-4">
				<?php
				if(is_active_sidebar('footer-sidebar-3')){
					dynamic_sidebar('footer-sidebar-3');
				}
				?>
			</div>
		</div>

	</div>

</div>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
