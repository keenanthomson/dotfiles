### /brief - Write Session Brief

IF the session is toward the end, and the user types `/brief` or asks you to "write the brief", immediately:
1. Review `/Users/keenan/Repos/keenan/.claude/Brief.md` for any existing content to potentially retain
2. Write a comprehensive brief covering:
   - Important progress made in the current session
   - Key decisions and architectural changes
   - Unfinished tasks and next steps
   - Technical details that need to be preserved
   - Any context that would be lost with the compact feature
3. Include the current date and time (EST) at the beginning
4. Overwrite the entire Brief.md file with the new content

**Purpose**: The brief serves as an extra layer on top of Claude Code's "compact" feature to ensure no important details are lost between sessions. This is NOT about brevity - be as thorough as needed to retain all important context.

**When to use**:
- At the end of significant development sessions
- When important architectural decisions have been made
- Before using the compact feature if critical details might be lost
- When the user explicitly requests it

**Note**: When asked to "read the brief", simply read the Brief.md file without modifying it. This typically happens at the beginning of sessions after /start.