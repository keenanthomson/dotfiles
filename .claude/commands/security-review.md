---
name: security-review
description: Comprehensive security audit of codebase
---

# Security Review: $ARGUMENTS

Perform a thorough security audit focusing on: $ARGUMENTS

## Review Checklist

### 1. Authentication & Authorization
- Check for weak password policies
- Verify JWT token validation
- Review session management
- Check for broken access control

### 2. Input Validation
- SQL injection vulnerabilities
- XSS (Cross-Site Scripting) risks
- Command injection possibilities
- Path traversal vulnerabilities

### 3. Data Protection
- Sensitive data exposure
- Encryption at rest and in transit
- API keys and secrets in code
- Database credential security

### 4. Dependencies
- Known vulnerabilities in packages
- Outdated dependencies
- License compliance issues

### 5. Configuration
- Security headers (CSP, HSTS, etc.)
- CORS configuration
- Error messages leaking information
- Debug mode in production

## Output Format

Provide a detailed report with:

```markdown
## 🔴 Critical Issues (Fix Immediately)
- **Issue**: [Description]
  - **File**: [path:line]
  - **Risk**: [What could happen]
  - **Fix**: [How to resolve]

## ⚠️ High Priority
[Similar format]

## 🟡 Medium Priority
[Similar format]

## 🔵 Low Priority / Recommendations
[Similar format]

## ✅ Security Strengths
[What's done well]

## 📋 Action Plan
1. [Prioritized list of fixes]