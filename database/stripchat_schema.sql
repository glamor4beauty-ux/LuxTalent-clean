-- Stripchat earnings schema
CREATE TABLE IF NOT EXISTS stripchat_earnings (
    id                          INT AUTO_INCREMENT PRIMARY KEY,
    model_username              VARCHAR(100) NOT NULL,
    performer_email             VARCHAR(255) NULL,
    period_type                 VARCHAR(30) NOT NULL DEFAULT 'currentPayment',
    period_start                DATETIME NULL,
    period_end                  DATETIME NULL,
    total_earnings              INT NOT NULL DEFAULT 0,
    fetched_at                  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_model (model_username),
    INDEX idx_performer (performer_email),
    INDEX idx_period (period_type, period_start),
    INDEX idx_fetched (fetched_at)
) ENGINE=InnoDB;