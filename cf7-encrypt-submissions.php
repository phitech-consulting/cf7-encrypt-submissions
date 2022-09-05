<?php
/**
 * Plugin Name: CF7 Encrypt Submissions
 * Plugin URI:
 * Description: Takes Contact Form 7 submitted data, encrypts it and stores it away in the database.
 * Version: v1.0 [First representative but simple version]
 * Author: Phitech Consulting
 * Author URI: https://phitech.consulting
 */


/* Exit if accessed directly */
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}


/* Add action and filter hooks */
add_action('wpcf7_before_send_mail', 'store_encrypted_entry_in_db', 10, 1);


/**
 * Called by action hook: wpcf7_before_send_mail.
 * Takes submitted data, encrypts it and stores it away in the database.
 * @param $contact_form
 * @return void
 */
function store_encrypted_entry_in_db($contact_form) {
    $key_file_path = ABSPATH . "../"; // One folder up from root
    if($encryption_key = file_get_contents($key_file_path . "cf7-key.txt")) {
        global $wpdb;
        $submission = WPCF7_Submission::get_instance();
        if ($submission) {
            $submitted_data = $submission->get_posted_data();
        }
        $inserts = array(
            "entry_body" => openssl_encrypt(json_encode($submitted_data), "aes-256-cbc", $encryption_key)
        );
        $wpdb->insert($wpdb->prefix . "cf7_encrypted_storage", $inserts);
    }
};
