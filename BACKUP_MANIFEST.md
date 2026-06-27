# LuxTalent-clean Repository Backup Manifest

**Date Created:** 2026-06-27  
**Original State:** 45 files in root directory  
**Purpose:** Document original structure before reorganization

## Original File Structure (Root Level)

### HTML Files (5)
- `dashboard.html` (502 KB) - Main dashboard interface
- `index.html` (104 KB) - Primary landing page
- `index (1).html` (98 KB) - Alternative index version
- `registration-assistant-prototype.html` (26.6 KB) - Registration UI prototype
- `google093b591e3f5e9cfa.html` (53 B) - Google verification file

### PHP Files (3)
- `_settings.php` (2.6 KB) - Configuration/settings
- `import_all.php` (48.8 KB) - Data import script
- `performer.php` (5.1 KB) - Performer module

### Python Files (7)
- `deploy_fields.py` (36.4 KB) - Field deployment script
- `deploy_leads.py` (33.8 KB) - Leads deployment script
- `deploy_kbfix.py` (42.6 KB) - Knowledge base fix deployment
- `deploy_sc_v2.py` (39.2 KB) - Scene/content v2 deployment
- `deploy_tasks.py` (29.0 KB) - Tasks deployment script
- `deploy_password.py` (8.9 KB) - Password deployment script
- `deploy_imgfix.py` (6.3 KB) - Image fix deployment script

### JavaScript Files (4)
- `newreg-popup.js` (4.7 KB) - New registration popup
- `phonebook.js` (8.4 KB) - Phonebook functionality
- `training-module.js` (5.0 KB) - Training module
- `video-client.js` (4.8 KB) - Video client functionality

### SQL Schema Files (5)
- `comm_schema.sql` (3.5 KB) - Communications schema
- `kb_schema.sql` (857 B) - Knowledge base schema
- `messages_schema.sql` (480 B) - Messages schema
- `stripchat_schema.sql` (2.5 KB) - Stripchat schema
- `tasks_schema.sql` (902 B) - Tasks schema

### Shell Scripts (1)
- `deploy_sms.sh` (4.9 KB) - SMS deployment script

### Configuration/Meta Files (3)
- `robots.txt` (325 B) - SEO robots configuration
- `sitemap.xml` (238 B) - XML sitemap
- `twilio-ivr-test.php.bak` (11.3 KB) - Twilio IVR backup

### Backup Files (11)
- `dashboard.html.bak-20260624-235134` (472 KB)
- `dashboard.html.bak-cockpit2-142010` (433 KB)
- `dashboard.html.bak-csscleanup-100114` (457 KB)
- `dashboard.html.bak-drawer-20260621-162706` (205 KB)
- `dashboard.html.bak-drawer-20260621-163638` (205 KB)
- `dashboard.html.bak-drawer-v2-20260621-164905` (205 KB)
- `dashboard.html.bak-lcrebuild-144708` (460 KB)
- `dashboard.html.bak-lcrebuild-150839` (453 KB)
- `dashboard.html.bak-lcstack5-091631` (444 KB)
- `dashboard.html.bak-relocate-143307` (438 KB)
- `dashboard.html.bak-replyforce-094107` (454 KB)
- `performer-dashboard.html.bak-c4sperf-162913` (84 KB)
- `performer-dashboard.html.bak-c4sperf-163028` (84 KB)
- `performer-dashboard.html.bak-kbperf-20260622-075803` (83 KB)

### Media Files (1)
- `clip4-1c.png` (161 KB) - Image asset

### Empty/Miscellaneous (1)
- `Access-Control-Request-Method:` (0 B) - Empty/system file

## Total Files: 45
## Total Size: ~5.5 MB

## Migration Notes

This manifest serves as a reference point for the restructuring process. All files listed above have been preserved and will be organized into a logical directory structure while maintaining functionality.

### Key Observations:
1. **Backup files**: 11 versioned backups of dashboard/performer files (candidates for archival)
2. **Entry points**: Multiple HTML files suggest different interfaces (main dashboard, registration, etc.)
3. **Deployment focus**: Heavy Python script presence indicates automated deployment workflows
4. **Database**: SQL schemas indicate multi-table database structure
5. **Mixed concerns**: Frontend, backend, and configuration all in root directory

## Restructuring Goals:
- ✅ Organize by concern (frontend, backend, database)
- ✅ Archive old backups
- ✅ Create clear documentation
- ✅ Maintain all functionality
- ✅ Enable easy deployment to other AI sources

