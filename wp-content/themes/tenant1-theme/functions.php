<?php
/**
 * Tenant1 Theme Functions
 *
 * @package Tenant1Theme
 */

/**
 * Display tenant1 message in footer.
 *
 * @return void
 */
function tenant1_msg() {
	echo '<h2>Tenant1 Active</h2>';
}

add_action( 'wp_footer', 'tenant1_msg' );
