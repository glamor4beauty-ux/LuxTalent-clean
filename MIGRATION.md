# Migration Guide: Repository Restructuring

**Date:** 2026-06-27  
**Branch:** develop  
**Status:** In Progress

## Overview

This document describes the restructuring of the LuxTalent-clean repository from a flat root directory to an organized, production-ready structure.

## Changes Made

### Phase 1: Documentation & Backup ✅

**New Files Created:**
- `BACKUP_MANIFEST.md` - Reference of original structure
- `README.md` - Complete project documentation
- `.gitignore` - Git ignore rules
- `MIGRATION.md` - This file
- `ARCHITECTURE.md` - System design documentation

### Phase 2: Directory Reorganization (In Progress)

**File moves planned:**

#### Frontend Files → `frontend/`
```
html/
├── index.html
├── dashboard.html
├── registration-assistant-prototype.html
└── index (1).html

js/
├── newreg-popup.js
├── phonebook.js
├── training-module.js
└── video-client.js

public/
├── images/
│   └── clip4-1c.png
├── robots.txt
└── sitemap.xml
```

#### Backend Files → `backend/`
```
php/
├── _settings.php
├── import_all.php
├── performer.php
└── twilio-ivr-test.php.bak

python/
├── deploy_fields.py
├── deploy_leads.py
├── deploy_kbfix.py
├── deploy_sc_v2.py
├── deploy_tasks.py
├── deploy_password.py
└── deploy_imgfix.py

shell/
└── deploy_sms.sh
```

#### Database Files → `database/`
```
├── comm_schema.sql
├── kb_schema.sql
├── messages_schema.sql
├── stripchat_schema.sql
├── tasks_schema.sql
└── init.sql (master initialization)
```

#### Configuration → `config/`
```
├── config.example.php
└── config.php (not in git, created locally)
```

#### Archives → `archive/`
```
backups/
├── dashboard/
│   ├── dashboard.html.bak-20260624-235134
│   ├── dashboard.html.bak-cockpit2-142010
│   ├── dashboard.html.bak-csscleanup-100114
│   ├── dashboard.html.bak-drawer-20260621-162706
│   ├── dashboard.html.bak-drawer-20260621-163638
│   ├── dashboard.html.bak-drawer-v2-20260621-164905
│   ├── dashboard.html.bak-lcrebuild-144708
│   ├── dashboard.html.bak-lcrebuild-150839
│   ├── dashboard.html.bak-lcstack5-091631
│   ├── dashboard.html.bak-relocate-143307
│   └── dashboard.html.bak-replyforce-094107
└── performer/
    ├── performer-dashboard.html.bak-c4sperf-162913
    ├── performer-dashboard.html.bak-c4sperf-163028
    └── performer-dashboard.html.bak-kbperf-20260622-075803
```

### Phase 3: Configuration Files (Planned)

**To be created:**
- `package.json` - Node.js/JavaScript dependencies
- `requirements.txt` - Python dependencies
- `composer.json` - PHP dependencies (future)
- `docs/ARCHITECTURE.md` - Detailed architecture
- `docs/DEPLOYMENT.md` - Deployment procedures
- `docs/API.md` - API documentation
- `docs/CHANGELOG.md` - Version history

## File Path Updates Required

### For Server Deployments

If your server currently references files with hardcoded paths, update as follows:

**Before (current):**
```php
require 'dashboard.html';
include '_settings.php';
require 'import_all.php';
```

**After (restructured):**
```php
require 'frontend/html/dashboard.html';
include 'backend/php/_settings.php';
require 'backend/php/import_all.php';
```

### Python Script Imports

**Before:**
```python
import deploy_fields
from deploy_leads import *
```

**After:**
```python
import backend.python.deploy_fields as deploy_fields
from backend.python.deploy_leads import *
```

### SQL Schema Initialization

**Before:**
```bash
mysql db < comm_schema.sql
mysql db < kb_schema.sql
```

**After:**
```bash
mysql db < database/init.sql  # Single master file that includes all
```

## Database Migration

A new master initialization file will be created:

**`database/init.sql`**
```sql
-- Master initialization script
-- This includes all schema definitions

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
```

## Deployment Testing Checklist

- [ ] All file paths resolve correctly
- [ ] Database initializes without errors
- [ ] Frontend pages load properly
- [ ] PHP includes work as expected
- [ ] Python scripts execute successfully
- [ ] Shell scripts run without errors
- [ ] All imports/requires function properly
- [ ] No broken links or missing files
- [ ] Static assets load (CSS, JS, images)

## Rollback Plan

If issues occur:

1. **Switch back to main branch:**
   ```bash
   git checkout main
   ```

2. **Reset develop to main:**
   ```bash
   git reset --hard main
   ```

3. **Original files remain untouched** on production server

## What Stays the Same

✅ All 45 original files are preserved  
✅ No file content is modified  
✅ Backup files archived but accessible  
✅ All functionality maintained  
✅ Database schemas identical  

## What Changes

📁 Directory structure reorganized  
📄 New documentation files added  
🔧 Git configuration improved  
📋 Cleaner, more professional layout  

## How to Use This Guide

1. Review all changes listed above
2. Update server deployment scripts if needed
3. Test thoroughly on develop branch
4. Create Pull Request to main when ready
5. Test on staging before production deployment
6. Use rollback plan if any issues occur

## Next Steps

1. ✅ Phase 1: Documentation & Backup (DONE)
2. ⏳ Phase 2: Reorganize files into directories
3. ⏳ Phase 3: Create configuration and helper files
4. ⏳ Phase 4: Update all internal file references
5. ⏳ Phase 5: Test and validate all functionality
6. ⏳ Phase 6: Merge to main after approval

## Questions & Clarifications Needed

Before proceeding with Phase 2, please clarify:

1. **Entry point**: Which HTML/PHP file should be the main entry point? (index.html or index.php?)
2. **Configuration**: Are there any hardcoded paths in PHP/Python files that need updating?
3. **Database**: How is the database currently initialized? (Direct SQL or via PHP script?)
4. **Server setup**: How are files currently deployed to your production server?
5. **Dependencies**: Are there any external library dependencies not documented?

---

**Created:** 2026-06-27  
**Last Updated:** 2026-06-27  
**Branch:** develop  
**Status:** Documentation Phase Complete ✅