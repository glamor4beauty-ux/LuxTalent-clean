# Architecture Documentation

## System Overview

LuxTalent is a comprehensive talent management system for webcam models and content creators.

### Components

#### Frontend
- **index.html** - Public landing and registration page
- **dashboard.html** - Admin dashboard interface
- **JavaScript modules** - Interactive functionality

#### Backend
- **PHP Scripts** - Business logic and API endpoints
- **Python Scripts** - Data processing and automation
- **Shell Scripts** - Deployment and system tasks

#### Database
- **Communications** - Voice calls, SMS, video requests
- **Knowledge Base** - FAQ, articles, documentation
- **Messages** - Internal messaging system
- **Stripchat** - Integration with Stripchat platform
- **Tasks** - Task management and assignment

### Key Features

1. **Performer Registration** - Multi-step registration with ID verification
2. **Dashboard Management** - Admin panel for performers, leads, and tasks
3. **Communications** - Twilio integration for calls and SMS
4. **Platform Integration** - Stripchat, Bongacams, My.Club, Live Jasmin
5. **Knowledge Base** - AI-powered search and content management
6. **Schedule Management** - Weekly schedule tracking
7. **Earnings Tracking** - Real-time earnings from platform integrations

### File Structure

```
LuxTalent-clean/
├── frontend/
│   ├── html/           # HTML pages
│   └── js/             # JavaScript modules
├── backend/
│   ├── php/            # PHP scripts
│   ├── python/         # Python automation
│   └── shell/          # Shell scripts
├── database/           # SQL schemas
├── config/             # Configuration
├── public/             # Public assets
├── archive/            # Backup files
└── docs/               # Documentation
```

### Technology Stack

- **Frontend**: HTML5, CSS3, JavaScript, Bootstrap
- **Backend**: PHP 7.4+
- **Database**: MySQL/MariaDB
- **Automation**: Python 3.8+
- **External APIs**: Twilio, Stripchat

