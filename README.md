# cf7-encrypt-submissions
Plugin for Wordpress and Contact Form 7 that encrypts submissions before storage in database.
## How to install
1. Clone or download this repository to your local storage.
2. Create a new encryption key (min. 32 characters alpha numeric) and place the key in a file *cf7-key.txt*.
3. Upload this key file *cf7-key.txt* to one folder up from the Wordpress root. For instance if WP is installed in /home/my_user/mysite.com/public_html, you place *cf7-key.txt* in /home/my_user/mysite.com/.
4. Run the included SQL-query (wp_cf7_encrypted_storage.sql) in your MySQL DBMS.
5. Create a new folder in */wp-content/plugins*: 'cf7-encrypt-submissions'.
6. Place the file 'cf7-encrypt-submissions.php' in the folder from step 2.
7. Make sure you have CF7 installed and activated on the Wordpress site.
8. Enable CF7 Encrypt Submissions via Wordpress.
9. There is no step 9, you're done.
## v1.0 [First representative but simple version]
- Integrates with Contact Form 7 and encrypts and stores all new entries in a separate database table.