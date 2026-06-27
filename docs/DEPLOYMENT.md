# Deployment Guide

## Production Setup

### Prerequisites
- PHP 7.4 or higher
- MySQL 5.7 or higher
- Python 3.8 or higher
- Node.js (optional)

### Installation

1. **Clone Repository**
   ```bash
   git clone https://github.com/glamor4beauty-ux/LuxTalent-clean.git
   cd LuxTalent-clean
   ```

2. **Database Setup**
   ```bash
   mysql -u root -p < database/init.sql
   ```

3. **Configuration**
   ```bash
   cp config/config.example.php config/config.php
   # Edit config/config.php with your settings
   ```

4. **Permissions**
   ```bash
   chmod -R 755 .
   chmod -R 777 logs/
   ```

### Running Deployment Scripts

```bash
cd backend/python
python deploy_fields.py
python deploy_leads.py
python deploy_kbfix.py
python deploy_sc_v2.py
python deploy_tasks.py
python deploy_password.py
python deploy_imgfix.py
cd ../shell
bash deploy_sms.sh
```

### Web Server Configuration

**Apache (.htaccess)**
```apache
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^(.*)$ index.php [QSA,L]
```

**Nginx (server block)**
```nginx
location / {
    try_files $uri $uri/ /index.php?$query_string;
}
```

### SSL Certificate

Set up SSL certificate using Let's Encrypt:
```bash
certbot certonly --standalone -d luxetalentsystems.com
```

