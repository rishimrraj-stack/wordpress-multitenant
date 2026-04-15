<?php
function tenant2_msg() {
    echo "<h2>Tenant2 Active</h2>";
}
add_action('wp_footer', 'tenant2_msg');