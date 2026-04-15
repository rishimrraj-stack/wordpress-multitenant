<?php
/**
 * Tenant2 Theme Functions
 *
 * @package Tenant2Theme
 */

/**
 * Display tenant2 message in footer.
 *
 * @return void
 */
function tenant2_msg() {
	echo '<h2>Tenant2 Active</h2>';
}

add_action( 'wp_footer', 'tenant2_msg' );