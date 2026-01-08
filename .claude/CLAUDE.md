# Global Development Guide

## Important rules for Code Style

### Code Style

  - Python: Use type hints, follow mypy strict rules, use snake_case naming
  - Frontend: TypeScript required with explicit return types, use camelCase naming
  - Imports: Use prettier-plugin-sort-imports (auto-runs on format), avoid direct dayjs imports (use lib/dayjs)
  - CSS: Use Tailwind utility classes instead of inline styles
  - Error Handling: Prefer explicit error handling with typed errors
  - Naming: Use descriptive names
  - Comments: Explain why not what, avoid duplicating code logic, only add if important

### Testing

  - General: Prefer parameterized tests that exercise the system and explain code
  - Jest: Use single top-level describe block per file
  - Python: Use parameterized library, avoid doc comments in tests, consider parameterization over multiple assertions

### Philosophy

  - Balance code simplicity (fewer parts) with maintainability (understandable code)


# MCP Servers

## Figma MCP server rules

  - The Figma MCP server provides an assets endpoint which can serve image and SVG assets
  - IMPORTANT: If the Figma MCP server returns a localhost source for an image or an SVG, use that image or SVG source directly
  - IMPORTANT: DO NOT import/add new icon packages, all the assets should be in the Figma payload
  - IMPORTANT: do NOT use or create placeholders if a localhost source is provided