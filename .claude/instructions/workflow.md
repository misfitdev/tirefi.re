# Claude Session Instructions

## Project Overview
tirefi.re is a fun and sarcastic devops shitposting site that is used to make fun of tech and society.  _rewrite this if you need to_

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

### Code Standards
- **NEVER make changes without confirming with user first**
- _eval and add more here_

### Architecture
- _eval and add more here_

## Current Technical Debt
- Cart optimization algorithm needs real implementation
- Need real store API integrations (currently using test data)
- Security updates needed (Vite dependency updates pending)

## Recent Major Changes
- Updated style

## Next Priority Items
1. Copy over catastrophe dirs from project root into `.wip` (eg. devops, s3, etc) and update their style similar to the .wip/aws style
