<?php
function tenant1_msg() {
    echo "<h2>Tenant1 Active</h2>";
}
add_action('wp_footer', 'tenant1_msg');