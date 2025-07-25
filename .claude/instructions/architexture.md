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
- **Reference Implementation**: `.wip/aws/` shows new style pattern
- **Next Phase**: Copy remaining catastrophe dirs to `.wip/` with style updates

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

## Technical Debt & Next Steps

### Current Technical Debt
- **Content Migration**: Legacy directories need migration to `.wip/` structure
- **Style Consistency**: Need to apply `.wip/aws/` style to other categories
- **Architecture Documentation**: `.claude/instructions/` needs completion

### Immediate Priorities (from workflow.md)
1. **Content Migration**: Copy catastrophe dirs (devops, s3, etc.) to `.wip/`
2. **Style Standardization**: Update migrated content to match `.wip/aws/` style
3. **Documentation**: Complete `.claude/instructions/` architecture docs

### Long-term Architecture Goals
- **Consistent Style**: All content using updated `.wip/` design patterns
- **Enhanced Automation**: Better content management workflows
- **Performance**: Optimize Jekyll build and page load times
- **SEO**: Improve discoverability while maintaining satirical edge