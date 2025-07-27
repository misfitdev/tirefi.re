# Claude Session Instructions

## Project Overview
tirefi.re is a fun and sarcastic devops shitposting site that is used to make fun of tech and society. It's a Jekyll-based static site hosted on GitHub Pages, focused on providing satirical commentary on technology vendors, DevOps practices, and infrastructure pain points.

## NEXT SESSION ACTION PLAN 🎯

**Current Status**: 10 directories migrated to `.wip/`, 45+ remaining
**Next Task**: Pick ONE directory from the high-priority list below and migrate it to `.wip/`

**Recommended Next Targets** (pick one):
- `/serverless/` - "No servers! (Just someone else's servers)"
- `/systemd/` - "Doing everything so you don't have to understand anything"  
- `/windows/` - "Blue screens of death in the cloud"
- `/weblogic/` - "Logic not included"
- `/chef/` - "Too many cooks in the infrastructure kitchen"

**Migration Steps**:
1. Examine existing content in `/[chosen-directory]/`
2. Create `.wip/[directory]/index.md` following `.wip/dns/` pattern
3. Update `.wip/index.md` to point to new location
4. Use satirical voice with technical accuracy

**Full remaining directory list**: See `.claude/instructions/architexture.md` for complete 45+ directory list

## Development Workflow Rules

### State Management
- Always maintain `.claude/state/` and `.claude/instructions/` directories
- Update state files ONLY after successful commits
- Create `.claude/state/pending` file BEFORE making changes, remove AFTER successful commit
- Keep migration status updated in `architexture.md`

### User Preferences
- User prefers structured answers (bullets, tables) over rambling paragraphs
- Never use "—" as separator 
- Say "I don't know" rather than guessing
- Act like an expert in the topic being discussed
- Tell it like it is; don't sugar-coat responses
- Value fast iteration and sharp thinking
- User has deep SRE/security/compliance background - technical discussions expected

### Code Standards
- **NEVER make changes without confirming with user first**
- Use Jekyll/GitHub Pages best practices
- Maintain satirical voice and tone in content
- Follow existing `.wip/` directory structure for new content
- Test locally with `make fire-up` before committing
- Ensure GitHub Pages compatibility

### Content Standards
- **Voice**: Satirical, sarcastic, technical humor
- **Audience**: DevOps/SRE professionals who appreciate cynical tech commentary
- **Quality**: Technical accuracy required even in satirical content
- **Style**: Follow `.wip/aws/` and `.wip/dns/` patterns for new content sections

### Architecture
- **Platform**: Jekyll static site generator
- **Hosting**: GitHub Pages with custom domain
- **Dependencies**: Managed via github-pages gem for compatibility
- **Content Structure**: Topic-based directories, migrating to `.wip/` pattern
- **Security**: Static site security model, Dependabot for vulnerability management

## Current Technical Status (Updated 2025-07-27)

### Security Posture
- ✅ **Current**: All critical security updates applied (nokogiri 1.18.9, activesupport 7.0.7.1)
- ✅ **Monitoring**: Dependabot active and responsive
- ✅ **Infrastructure**: GitHub Pages provides baseline security

### Content Migration Status
- ✅ **Completed**: 10 directories migrated to `.wip/` (aws, devops, docker, dns, incident-management, microservices, monitoring, ops, puppet, s3)
- 🔄 **In Progress**: Systematic migration of remaining 45+ legacy directories
- 📋 **Templates**: `.wip/aws/` and `.wip/dns/` show established patterns

### Development Environment
- ✅ **Local Development**: Docker + Makefile setup functional
- ✅ **Dependency Management**: GitHub Pages gem provides Jekyll stack
- ✅ **Version Control**: Clean Git workflow, proper branch protection

## Migration Template Process

### Standard Migration Workflow
1. **Create pending state**: Update `.claude/state/pending` with chosen directory
2. **Examine source**: Look at existing `/[directory]/` content and structure
3. **Create new content**: Build `.wip/[directory]/index.md` with:
   - Jekyll front matter (`layout: wip`, `title`, `permalink: /.wip/[directory]/`)
   - Page header with breadcrumb navigation
   - Status banner appropriate to the technology
   - Main content with satirical commentary
   - Technical sections (commands, concepts, troubleshooting)
   - Fun facts section with humor
   - Philosophy/conclusion section
   - Navigation footer
   - Custom CSS styling consistent with other `.wip/` pages
4. **Update index**: Modify `.wip/index.md` to link to new location
5. **Complete state**: Update `.claude/state/pending` with completion status
6. **Update docs**: Refresh `architexture.md` migration status if needed

### Content Quality Standards
- **Technical Accuracy**: Even satirical content must be technically correct
- **Voice Consistency**: Maintain sarcastic DevOps commentary style
- **User Experience**: Balance humor with usability and informativeness
- **Mobile Friendly**: Ensure responsive design works well
- **SEO Friendly**: Use proper headings and semantic structure

## Recent Major Changes
- ✅ **DNS Migration**: Completed 2025-07-27 - comprehensive DNS disaster page
- ✅ **Architecture Documentation**: Updated with complete migration status
- ✅ **Workflow Documentation**: Added next-session action plan

## Development Commands
```bash
# Local development
make fire-up        # Start Jekyll server with Docker
make fire-logs      # View server logs  
make fire-down      # Stop development server

# Direct Jekyll (if Ruby environment available)
bundle exec jekyll serve

# Testing
bundle exec htmlproofer ./_site
```

## Key Files & Directories
- **Configuration**: `_config.yml` (Jekyll settings)
- **Dependencies**: `Gemfile` (GitHub Pages compatible)
- **Content WIP**: `.wip/` (new content structure - 10 directories migrated)
- **Legacy Content**: 45+ topic dirs in root still need migration
- **Layouts**: `_layouts/` (Jekyll templates)
- **Styles**: `_sass/` (SCSS stylesheets)
- **Documentation**: `.claude/instructions/` (workflow and architecture docs)
- **Migration Status**: See `architexture.md` for complete directory lists
