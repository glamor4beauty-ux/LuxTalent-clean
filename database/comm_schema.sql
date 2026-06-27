-- Communications module schema (Voice / SMS)
-- Safe to run repeatedly: CREATE TABLE IF NOT EXISTS.

CREATE TABLE IF NOT EXISTS call_log (
  id              INT AUTO_INCREMENT PRIMARY KEY,
  direction       VARCHAR(10)  NOT NULL DEFAULT 'outbound',
  phone           VARCHAR(32)  NOT NULL DEFAULT '',
  performer_email VARCHAR(190) NOT NULL DEFAULT '',
  twilio_sid      VARCHAR(64)  NOT NULL DEFAULT '',
  status          VARCHAR(32)  NOT NULL DEFAULT '',
  duration        INT          NOT NULL DEFAULT 0,
  admin_phone     VARCHAR(32)  NOT NULL DEFAULT '',
  recording_url   VARCHAR(255) NOT NULL DEFAULT '',
  recording_sid   VARCHAR(64)  NOT NULL DEFAULT '',
  created_at      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY idx_phone (phone),
  KEY idx_email (performer_email),
  KEY idx_sid (twilio_sid),
  KEY idx_created (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;