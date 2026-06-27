-- Master database initialization script
-- Includes all schema definitions
-- Run: mysql -u root -p luxe_talent < database/init.sql

-- Initialize communications schema
source database/comm_schema.sql;

-- Initialize knowledge base schema
source database/kb_schema.sql;

-- Initialize messages schema
source database/messages_schema.sql;

-- Initialize stripchat schema
source database/stripchat_schema.sql;

-- Initialize tasks schema
source database/tasks_schema.sql;

-- All tables created successfully
SHOW TABLES;