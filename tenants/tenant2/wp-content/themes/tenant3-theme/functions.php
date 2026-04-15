<?php
/**
 * Tenant3 Theme Functions
 *
 * @package Tenant3Theme
 */

/**
 * Display tenant3 message in footer.
 *
 * @return void
 */
function tenant3_msg() {
	echo '<h2>Tenant3 Active</h2>';
}

add_action( 'wp_footer', 'tenant3_msg' );
