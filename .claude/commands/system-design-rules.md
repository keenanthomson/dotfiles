---
name: system-design-rules
description: Analyzes the codebase to generate a comprehensive Claude Code skill for integrating Figma designs via Model Context Protocol. Examines design tokens, component libraries, frameworks, assets, icons, styling approaches, and project structure to produce a skill file that guides Figma-to-code implementation.
---

# Create System Design Rules: $ARGUMENTS

Analyze the codebase at the path specified in $ARGUMENTS thoroughly and provide a comprehensive rules doc for your use on the following aspects to help integrate Figma designs using the Model Context Protocol. Save the doc to `$ARGUMENTS/.claude/skills/apply-system-design-rules.mdc` (relative to the codebase directory specified in $ARGUMENTS).

## Design System Structure

1. **Token Definitions**
   - Where are design tokens (colors, typography, spacing, etc.) defined?
   - What format/structure is used for tokens?
   - Are there any token transformation systems in place?

2. **Component Library**
   - Where are UI components defined?
   - What component architecture is used?
   - Are there any component documentation or storybooks?

3. **Frameworks & Libraries**
   - What UI frameworks are used (React, Vue, etc.)?
   - What styling libraries/frameworks are used?
   - What build system and bundler are used?

4. **Asset Management**
   - How are assets (images, videos, etc.) stored and referenced?
   - What asset optimization techniques are used?
   - Are there any CDN configurations?

5. **Icon System**
   - Where are icons stored?
   - How are icons imported and used in components?
   - Is there an icon naming convention?

6. **Styling Approach**
   - What CSS methodology is used (CSS Modules, Styled Components, etc.)?
   - Are there global styles?
   - How are responsive designs implemented?

7. **Project Structure**
   - What is the overall organization of the codebase?
   - Are there any specific patterns for feature organization?

Provide your analysis as structured markdown with code snippets demonstrating key patterns. Include file paths where relevant.