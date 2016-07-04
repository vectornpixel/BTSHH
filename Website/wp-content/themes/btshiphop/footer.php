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

<footer id="colophon" class="site-footer" role="contentinfo">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h4 class="text-uppercase">About</h4>
				<p>CMS was established in 1998. GBS is a minority partner of CMS –an
					experienced, minority-owned and operated partner for innovative solutions. We focus on providing value-added solutions that are customized and flexible to each customer’s needs.</p>
			</div>
			<div class="col-md-4">
				<h4 class="text-uppercase">Location</h4>
				<p>Corporate Headquarters</p>
				<p>
					7233 Freedom Avenue, NW<br>
					North Canton, Ohio 44720<br>
					330.498.1013</p>
			</div>
			<div class="col-md-4">
				<h4 class="text-uppercase">Contact Us</h4>
				<?php echo do_shortcode( '[contact-form-7 id="208" title="Contact form 1"]' ); ?>
				<!--<form class="form-container" name="contact-form" method="post">
					<div class="form-group">
						<input class="form-control form-field" type="text" name="name" id="name" placeholder="Name" />
					</div>
					<div class="form-group">
						<input class="form-control form-field" type="text" name="email" id="email" placeholder="Email" />
					</div>
					<div class="form-group">
						<input class="form-control form-field" type="text" name="phone" id="phone" placeholder="Phone" />
					</div>

					<div class="form-group pull-right">
						<button class="btn btn-submit" type="submit">Send Email</button>
					</div>
				</form>-->
			</div>
		</div>
	</div>

</footer>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
