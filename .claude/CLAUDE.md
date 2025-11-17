# Global Development Guide

## Important rules for Code Style

- Python: Use type hints, follow mypy strict rules
- Frontend: TypeScript required, explicit return types
- Imports: Use prettier-plugin-sort-imports (automatically runs on format), avoid direct dayjs imports (use lib/dayjs)
- CSS: Use tailwind utility classes instead of inline styles
- Error handling: Prefer explicit error handling with typed errors
- Naming: Use descriptive names, camelCase for JS/TS, snake_case for Python
- Comments: should not duplicate the code below, don't tell me "this finds the shortest username" tell me _why_ that is important, if it isn't important don't add a comment, almost never add a comment 
- Any tests: prefer to use parameterized tests, think carefully about what input and output look like so that the tests exercise the system and explain the code to the future traveller
- Jest tests: when writing jest tests, prefer a single top-level describe block in a file
- Python tests: in python use the parameterized library for parameterized tests, every time you are tempted to add more than one assertion to a test consider (really carefully) if it should be a parameterized test instead
- Python tests: do not add doc comments
- Always remember that there is a tension between having the fewest parts to code (a simple system) and having the most understandable code (a maintainable system). Structure code to balance these two things.