# Technical Architecture

## Current Stack

### Core Platform
- **Framework**: Jekyll (Static Site Generator)
- **Hosting**: GitHub Pages (github-pages gem)
- **Domain**: tirefi.re
- **Repository**: misfitdev/tirefi.re (migrated from tirefire/tirefi.re)

### Development Environment
- **Package Manager**: Bundler (GitHub Pages compatible)
- **Build Tool**: Jekyll with GitHub Pages integration
- **Task Runner**: Makefile with Docker support
- **Version Management**: asdf (.tool-versions)

### Content Architecture
- **Primary Content**: Topic-based directories (aws/, devops/, s3/, etc.)
- **WIP Content**: `.wip/` directory for development/redesign
- **Format**: Markdown with Jekyll Front Matter
- **Styling**: Custom SCSS in `_sass/`
- **Layout**: Jekyll layouts in `_layouts/`

### Content Migration Strategy
- **Legacy Structure**: Topic dirs in project root (aws/, devops/, s3/, etc.)
- **Target Structure**: Migrating to `.wip/` with updated styling
- **Reference Implementation**: `.wip/aws/` and `.wip/dns/` show new style pattern
- **Current Phase**: Systematic migration of remaining legacy directories

### Security Architecture
- **Recent Updates**: ✅ CVE patches applied (nokogiri 1.18.9, activesupport 7.0.7.1)
- **Dependency Management**: GitHub Pages gem manages Jekyll dependencies
- **Static Site Security**: No server-side execution, GitHub Pages infrastructure
- **Automated Scanning**: Dependabot enabled and responsive

### Deployment Architecture
- **CI/CD**: GitHub Pages automatic deployment
- **Build Process**: Jekyll build on GitHub infrastructure
- **Domain**: Custom domain with GitHub Pages
- **SSL**: Automatic HTTPS via GitHub Pages

## Design Philosophy

### Site Voice & Style
- **Tone**: "Fun and sarcastic devops shitposting site"
- **Purpose**: Make fun of tech and society
- **Content**: DevOps commentary, infrastructure satire, tech criticism
- **Audience**: Technical professionals who appreciate cynical humor

### Content Organization
- **Topic-Based**: Organized by technology/vendor categories
- **Satirical Focus**: Each topic targets specific tech/vendor pain points
- **Community**: "Please use with loving-kindness, we're all human except for the robot overlords"

## Current Migration Status (Updated 2025-07-27)

### Completed Migrations to .wip/ ✅ (10 directories)
- /.wip/aws/ ✅
- /.wip/devops/ ✅
- /.wip/docker/ ✅
- /.wip/dns/ ✅ (completed 2025-07-27)
- /.wip/incident-management/ ✅
- /.wip/microservices/ ✅
- /.wip/monitoring/ ✅
- /.wip/ops/ ✅
- /.wip/puppet/ ✅
- /.wip/s3/ ✅
- /.wip/in-memoriam/ ✅ (special case)

### Remaining Legacy Directories for Migration 📋 (45+ directories)
**High Priority Tech Disasters:**
- /serverless/ (serverless computing)
- /systemd/ (Linux init system)
- /windows/ (Microsoft Windows)
- /weblogic/ (Oracle application server)
- /openstack/ (private cloud platform)
- /chef/ (configuration management)
- /cfengine/ (configuration management)

**Cloud & Infrastructure:**
- /elb/ (AWS Elastic Load Balancer)
- /equifax/ (data breach case study)
- /facebook/ (social media platform)
- /hackernews/ (tech news community)

**DevOps Tools & Practices:**
- /dumpster/ (code graveyard)
- /postmortems/ (incident analysis)
- /opsroulette/ (dangerous operations)
- /pair-programming/ (development practice)
- /sysadmin-day/ (system administrator appreciation)

**Programming & Platforms:**
- /opensource/ (open source software)
- /openjdk/ (Java platform)
- /rvm/ (Ruby version manager)
- /nodejs/ (covered in index but may need migration)

**Corporate & Industry:**
- /ibm/ (International Business Machines)
- /airbnb/ (vacation rental platform)
- /motivation/ (motivational content)
- /vmworld/ (VMware conference)

**Culture & Commentary:**
- /wellactually/ (pedantic corrections)
- /mansplaining/ (condescending explanations)
- /giforgif/ (pronunciation debate)
- /nicolas-cage/ (actor appreciation)
- /debate/ (arguing practices)
- /president/ (leadership commentary)
- /trumpdays/ (political countdown)

**Technical Concepts:**
- /copyleft/ (software licensing)
- /gnu/ (GNU project)
- /byod/ (bring your own device)
- /cyber/ (cybersecurity theater)
- /cryops/ (cold operations)

**Tools & Utilities:**
- /logrotate/ (log management)
- /infrakit/ (infrastructure toolkit)
- /cafepress/ (custom printing)
- /playbook/ (operational procedures)
- /quarantined/ (isolated systems)
- /zoom/ (video conferencing)

**People & Community:**
- /jessfraz/ (Jessie Frazelle)
- /petecheslock/ (Pete Cheslock)
- /simonandczarfunkel/ (container music)

**Geographic & Cultural:**
- /australia/ (upside-down servers)
- /americancraft/ (artisanal infrastructure)
- /sk8-die/ (extreme operations)

**Special/Archive Directories:**
- /2016/ (archived content)
- /2020/ (archived content)
- /css/ (stylesheets)
- /ibm/countdown/ (nested IBM content)
- /opensource/enterprise/ (nested opensource content)

### Next Steps for Migration
1. **Pick a high-priority directory** from the list above
2. **Follow the established pattern** (use `.wip/aws/` and `.wip/dns/` as templates)
3. **Create `.wip/[directory]/index.md`** with proper front matter and styling
4. **Update `.wip/index.md`** to link to the new location
5. **Maintain satirical voice** while ensuring technical accuracy
6. **Test locally** with `make fire-up` before committing

### Migration Template Process
1. Examine existing content in `/[directory]/`
2. Create `.wip/[directory]/index.md` with:
   - Proper Jekyll front matter (`layout: wip`, `title`, `permalink`)
   - Page header with breadcrumb navigation
   - Status banner appropriate to the technology
   - Main content with satirical commentary
   - Technical accuracy mixed with humor
   - Navigation footer linking to other disasters
   - Consistent styling following `.wip/aws/` pattern
3. Update `.wip/index.md` to point to new location
4. Commit changes with descriptive messages

## Technical Debt & Next Steps

### Current Technical Debt
- **Content Migration**: 45+ legacy directories need migration to `.wip/` structure
- **Style Consistency**: Need to apply consistent `.wip/` style to all migrated content
- **Architecture Documentation**: Keep `.claude/instructions/` updated with migration progress

### Immediate Priorities
1. **Continue Content Migration**: Systematically migrate remaining directories
2. **Style Standardization**: Ensure all `.wip/` content follows established patterns
3. **Testing**: Regular local testing with `make fire-up`
4. **Documentation**: Keep migration status updated in this file

### Long-term Architecture Goals
- **Complete Migration**: All disaster content using updated `.wip/` design patterns
- **Enhanced Automation**: Better content management workflows
- **Performance**: Optimize Jekyll build and page load times
- **SEO**: Improve discoverability while maintaining satirical edge
