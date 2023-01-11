<?php
/** The base configuration for WordPress
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 */

/** The name of the database for WordPress */
define('DB_NAME', 'Base');

/** MySQL database username */
define('DB_USER', 'stissera');

/** MySQL database password */
define('DB_PASSWORD', 'qwerty');

/** MySQL hostname */
define('DB_HOST', 'mariadb');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

//** Redis cache settings. */
define('WP_CACHE', true);
define('WP_CACHE_KEY_SALT', 'stissera.42.fr');

//** Try Redis container */
define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', 6379);
// define( 'WP_REDIS_PASSWORD', '$REDIS_PWD' );
define('WP_REDIS_TIMEOUT', 1);
define('WP_REDIS_READ_TIMEOUT', 1);
define('WP_REDIS_DATABASE', 0);


/** Authentication Unique Keys and Salts.
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 */

define('AUTH_KEY',         'JH}]Q4.)-<+Ra.#,9I/LVbzNC3^a6to|qA-{aq5krR2HKSr#9t2$(h%_87)qgynm');
define('SECURE_AUTH_KEY',  'NPHrx@}fZFMl$,0G4/.(w&!kSRf^8 v4l?r/DG+1 36Uka[*+x{tQb50zEtv,IF/');
define('LOGGED_IN_KEY',    'c)VT=YuKg<sIN8Y2]n/p+lkV-Hxd<z5=O;K,!?]OFwLi^gPvjxq$6Z}/Zq+U@i;D');
define('NONCE_KEY',        '-qtKAz8|h_Uy9yKy0`/ PQ.hrv|b$7]{OY=CryXp,0]fbl#A_lvu!n+>Xj?HjlMz');
define('AUTH_SALT',        ']=^g-roOk[O^5J$hdS!e?9!_ayO}YRh4c;Z0<U8mxD7q:$.n;^+3I-~JVc9}b2:=');
define('SECURE_AUTH_SALT', '?3x<w/-#@?:R6GzVlq+C}z#h-t|jYby;pvr58{H|lTL?PSH![$l`c?&%Z`DgA6{s');
define('LOGGED_IN_SALT',   'FF9Q_53;f|9/_>9f(h4wdQa{avb!J`khxo%l3gS?uZW]{~D=8&8k2{pSDtfXM;5?');
define('NONCE_SALT',       '=n+^p4fuVa%8d)69}9m=,DZ<Waxa#d<P-!Y<<=[69L2d0}VaM*?-kcX2Dl6LSBh|');

/** WordPress Database Table prefix. */
$table_prefix = 'wp_';

/** For developers: WordPress debugging mode. */
define( 'WP_DEBUG', false );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>
