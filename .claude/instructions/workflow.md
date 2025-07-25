# Claude Session Instructions

## Project Overview
tirefi.re is a fun and sarcastic devops shitposting site that is used to make fun of tech and society. It's a Jekyll-based static site hosted on GitHub Pages, focused on providing satirical commentary on technology vendors, DevOps practices, and infrastructure pain points.

## Development Workflow Rules

### State Management
- Always maintain `.claude/state/` and `.claude/instructions/` directories
- Update state files ONLY after successful commits
- Create `.claude/state/pending` file BEFORE making changes, remove AFTER successful commit
- Include these workflow instructions in the instruction file

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
- **Style**: Follow `.wip/aws/` pattern for new content sections

### Architecture
- **Platform**: Jekyll static site generator
- **Hosting**: GitHub Pages with custom domain
- **Dependencies**: Managed via github-pages gem for compatibility
- **Content Structure**: Topic-based directories, migrating to `.wip/` pattern
- **Security**: Static site security model, Dependabot for vulnerability management

## Current Technical Status

### Security Posture
- ✅ **Current**: All critical security updates applied (nokogiri 1.18.9, activesupport 7.0.7.1)
- ✅ **Monitoring**: Dependabot active and responsive
- ✅ **Infrastructure**: GitHub Pages provides baseline security

### Content Migration Status
- ✅ **Reference Pattern**: `.wip/aws/` shows target style
- ✅ **Partial Migration**: Some content already in `.wip/`
- 🔄 **In Progress**: Migrating legacy topic directories to `.wip/` structure
- 📋 **Pending**: Apply consistent styling across all migrated content

### Development Environment
- ✅ **Local Development**: Docker + Makefile setup functional
- ✅ **Dependency Management**: GitHub Pages gem provides Jekyll stack
- ✅ **Version Control**: Clean Git workflow, proper branch protection

## Current Priority Items

### Phase 1: Content Migration (CURRENT)
1. **Copy catastrophe dirs from project root into `.wip/`** 
   - Target dirs: devops/, s3/, monitoring/, ops/, incident-management/, etc.
   - Update their style similar to the `.wip/aws/` implementation
   - Maintain satirical content while improving presentation

### Phase 2: Style Standardization
2. **Standardize `.wip/` content styling**
   - Apply consistent layout patterns
   - Ensure responsive design
   - Maintain satirical voice while improving UX

### Phase 3: Infrastructure Enhancement
3. **Optimize Jekyll performance**
   - Review build times
   - Optimize asset loading
   - Enhance SEO while maintaining satirical edge

## Workflow Patterns

### Content Development
1. **Research Target**: Understand the technology/vendor being satirized
2. **Technical Accuracy**: Ensure satirical content is technically sound
3. **Style Consistency**: Follow `.wip/` patterns
4. **Local Testing**: Use `make fire-up` for preview
5. **Iterative Refinement**: Build on existing satirical themes

### Code/Infrastructure Changes
1. **Security First**: Prioritize any security-related updates
2. **GitHub Pages Compatibility**: Ensure all changes work with hosting platform
3. **Performance**: Monitor impact on build times and site speed
4. **Documentation**: Update `.claude/instructions/` for significant changes

### Quality Standards
- **Technical Accuracy**: Even satirical content must be technically correct
- **Voice Consistency**: Maintain sarcastic DevOps commentary style
- **User Experience**: Balance humor with usability
- **Mobile Friendly**: Ensure responsive design works well

## Recent Major Changes
- ✅ **Security Updates**: Applied critical CVE patches (July 2025)
- ✅ **Architecture Documentation**: Updated `.claude/instructions/architexture.md`
- ✅ **Dependency Management**: Migrated to github-pages gem for compatibility

## Next Session Priorities
1. **Content Migration**: Continue copying legacy dirs to `.wip/` with style updates
2. **Style Analysis**: Review `.wip/aws/` pattern for replication guidelines
3. **Content Quality**: Ensure migrated content maintains satirical voice
4. **Performance**: Monitor Jekyll build performance during migration

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
- **Content WIP**: `.wip/` (new content structure)
- **Legacy Content**: Topic dirs in root (aws/, devops/, s3/, etc.)
- **Layouts**: `_layouts/` (Jekyll templates)
- **Styles**: `_sass/` (SCSS stylesheets)
- **Documentation**: `.claude/instructions/` (workflow and architecture docs)