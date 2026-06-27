<?php
/**
 * LuxTalent Configuration Example
 * Copy this file to config/config.php and update with your values
 */

// Database Configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'luxtalent_user');
define('DB_PASS', 'secure_password');
define('DB_NAME', 'luxtalent_db');
define('DB_PORT', 3306);

// Application Settings
define('APP_URL', 'http://localhost:8000');
define('APP_NAME', 'Luxe Talent System');

// Debug Mode (set to false in production)
define('DEBUG_MODE', false);
define('LOG_PATH', __DIR__ . '/../logs/');

// Twilio Configuration (optional)
// define('TWILIO_ACCOUNT_SID', 'your_account_sid');
// define('TWILIO_AUTH_TOKEN', 'your_auth_token');
// define('TWILIO_PHONE', '+1234567890');

// Email Configuration (optional)
// define('SMTP_HOST', 'smtp.gmail.com');
// define('SMTP_PORT', 587);
// define('SMTP_USER', 'your_email@gmail.com');
// define('SMTP_PASS', 'your_password');

// JWT Secret (for API authentication)
// define('JWT_SECRET', 'your_jwt_secret_key');

?>