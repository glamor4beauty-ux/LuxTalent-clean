# LuxTalent-clean

A complete talent management system with dashboard, performer management, communications, and task deployment automation.

## 🚀 Quick Start

### Prerequisites
- PHP 7.4+
- Python 3.8+
- MySQL/MariaDB
- Node.js (optional, for frontend enhancements)

### Installation

```bash
# Clone the repository
git clone https://github.com/glamor4beauty-ux/LuxTalent-clean.git
cd LuxTalent-clean

# Install Python dependencies
pip install -r requirements.txt

# Set up configuration
cp config.example.php config/config.php
# Edit config/config.php with your database credentials

# Initialize database
mysql -u root -p < database/schema.sql
```

### Running the Application

**Option 1: Built-in PHP Server**
```bash
php -S localhost:8000
# Access at http://localhost:8000
```

**Option 2: Apache/Nginx**
Point your web root to the project directory.

## 📁 Project Structure

```
LuxTalent-clean/
├── frontend/                 # User-facing interfaces
│   ├── html/                # HTML pages
│   │   ├── index.html
│   │   ├── dashboard.html
│   │   ├── registration-assistant-prototype.html
│   │   └── ...
│   └── js/                  # JavaScript modules
│       ├── newreg-popup.js
│       ├── phonebook.js
│       ├── training-module.js
│       └── video-client.js
│
├── backend/                 # Server-side logic
│   ├── php/                # PHP scripts
│   │   ├── _settings.php
│   │   ├── import_all.php
│   │   ├── performer.php
│   │   └── ...
│   ├── python/             # Python deployment scripts
│   │   ├── deploy_fields.py
│   │   ├── deploy_leads.py
│   │   ├── deploy_kbfix.py
│   │   ├── deploy_sc_v2.py
│   │   ├── deploy_tasks.py
│   │   ├── deploy_password.py
│   │   └── deploy_imgfix.py
│   └── shell/              # Shell deployment scripts
│       └── deploy_sms.sh
│
├── database/               # Database schemas
│   ├── comm_schema.sql
│   ├── kb_schema.sql
│   ├── messages_schema.sql
│   ├── stripchat_schema.sql
│   ├── tasks_schema.sql
│   └── init.sql            # Master initialization script
│
├── config/                 # Configuration files
│   ├── config.php
│   └── config.example.php
│
├── public/                 # Public assets
│   ├── assets/
│   ├── images/
│   │   └── clip4-1c.png
│   └── robots.txt
│
├── archive/                # Backup and archived files
│   └── backups/            # Previous dashboard versions
│
├── docs/                   # Documentation
│   ├── ARCHITECTURE.md
│   ├── DEPLOYMENT.md
│   ├── API.md
│   └── MIGRATION.md
│
├── tests/                  # Test files (future)
│
├── .gitignore
├── package.json            # Node.js dependencies
├── requirements.txt        # Python dependencies
├── composer.json           # PHP dependencies (future)
└── README.md
```

## 🔧 Key Components

### Frontend
- **Dashboard**: Main admin interface (`frontend/html/dashboard.html`)
- **Registration Assistant**: User registration UI prototype
- **Video Client**: Video streaming functionality
- **Phonebook**: Contact management module
- **Training Module**: Educational content delivery

### Backend
- **Settings Management**: Configuration and initialization (`backend/php/_settings.php`)
- **Data Import**: Bulk data import system (`backend/php/import_all.php`)
- **Performer Management**: Performer profiles and data (`backend/php/performer.php`)

### Deployment Automation
- **Field Deployment**: Custom field management
- **Leads Deployment**: Lead management automation
- **Knowledge Base Fixes**: KB content updates
- **Scene/Content Deployment**: Content publishing (v2)
- **Task Deployment**: Task system management
- **Password Management**: Credential management
- **Image Fixes**: Image optimization and fixes
- **SMS Deployment**: SMS integration

### Database
Multiple schemas for different concerns:
- Communications (chat, messaging)
- Knowledge Base (FAQ, articles)
- Messages (stored messages)
- Stripchat Integration
- Tasks Management

## 🔐 Configuration

Create `config/config.php` from the example:

```php
<?php
define('DB_HOST', 'localhost');
define('DB_USER', 'luxtalent_user');
define('DB_PASS', 'secure_password');
define('DB_NAME', 'luxtalent_db');
define('APP_URL', 'http://localhost:8000');
?>
```

## 📦 Dependencies

### Python
See `requirements.txt` for complete list. Key packages:
- Database connectors
- API clients
- Data processing utilities

### JavaScript
Vanilla JavaScript - no framework dependencies currently.

### PHP
Core PHP with potential PSR compliance.

## 🚢 Deployment

### To Production Server

1. **Via Git:**
```bash
git clone <repo> /var/www/luxtalent
cd /var/www/luxtalent
git checkout main
php backend/php/_settings.php
```

2. **Via FTP/SCP:**
Upload all files maintaining directory structure.

3. **Database:**
```bash
mysql -u root -p luxtalent_db < database/init.sql
```

4. **Permissions:**
```bash
chmod -R 755 .
chmod -R 777 backend/python  # If scripts need write access
```

### Deployment Scripts

Run deployment scripts in order:
```bash
python backend/python/deploy_fields.py
python backend/python/deploy_leads.py
python backend/python/deploy_kbfix.py
python backend/python/deploy_sc_v2.py
python backend/python/deploy_tasks.py
python backend/python/deploy_password.py
python backend/python/deploy_imgfix.py
bash backend/shell/deploy_sms.sh
```

## 📝 Documentation

- [Architecture](docs/ARCHITECTURE.md) - System design and components
- [Deployment Guide](docs/DEPLOYMENT.md) - Production deployment steps
- [API Reference](docs/API.md) - Available endpoints and methods
- [Migration Guide](docs/MIGRATION.md) - Changes from previous versions
- [Backup Manifest](BACKUP_MANIFEST.md) - Original structure reference

## 🐛 Debugging

Enable debug mode in `config/config.php`:
```php
define('DEBUG_MODE', true);
define('LOG_PATH', __DIR__ . '/../logs/');
```

Check logs in the `logs/` directory for errors.

## 🔄 Git Workflow

### Branches
- `main` - Production-ready code
- `develop` - Development and testing
- `feature/*` - Individual features

### Contributing
1. Create feature branch: `git checkout -b feature/your-feature develop`
2. Make changes
3. Test thoroughly
4. Create Pull Request to `develop`
5. After review, merge to `main`

## 📊 Database Schema

### Tables
- `communications` - Chat and messaging data
- `knowledge_base` - FAQ and articles
- `messages` - Stored messages
- `stripchat_*` - Stripchat integration tables
- `tasks` - Task management

Run initialization to create all tables:
```bash
mysql -u root -p luxtalent_db < database/init.sql
```

## 🆘 Support

For issues and feature requests, use GitHub Issues.

## 📄 License

[Add your license here]

## 👥 Authors

- glamor4beauty-ux

## 📅 Changelog

See [CHANGELOG.md](docs/CHANGELOG.md) for version history.

---

**Last Updated:** 2026-06-27  
**Current Version:** 1.0.0-restructured