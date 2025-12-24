# Contributing to Universal Dev Skills

[English](CONTRIBUTING.md) | [繁體中文](CONTRIBUTING.zh-TW.md)

Thank you for your interest in contributing!

---

## Disabled Skills

By default, all installed skills are enabled. To disable specific skills for your project, add a "Disabled Skills" section to your project's `CONTRIBUTING.md`:

```markdown
## Disabled Skills

- testing-guide
- release-standards
<!-- Skills listed here will be disabled for this project -->
```

| Configuration | Behavior |
|---------------|----------|
| Section does not exist | All skills enabled (default) |
| Section is empty or commented out | All skills enabled (default) |
| Section exists with skill list | Listed skills are disabled |

---

## Skill Configuration

Some skills support project-specific configuration. Add the following sections to your project's `CONTRIBUTING.md` to customize behavior.

### 1. Commit Message Language

**Skill**: `commit-standards`

```markdown
## Commit Message Language

This project uses **English** commit types.
<!-- Options: English | Traditional Chinese | Bilingual -->

### Allowed Types
feat, fix, refactor, docs, style, test, perf, build, ci, chore, revert, security
```

| Option | Example |
|--------|---------|
| **English** (default) | `feat(auth): Add OAuth2 login` |
| **Traditional Chinese** | `新增(認證): 實作 OAuth2 登入` |
| **Bilingual** | `feat(auth): Add OAuth2 login. 新增 OAuth2 登入。` |

---

### 2. Certainty Tag Language

**Skill**: `ai-collaboration-standards`

```markdown
## Certainty Tag Language

This project uses **English** certainty tags.
<!-- Options: English | 中文 -->
```

| Option | Tags |
|--------|------|
| **English** (default) | `[Confirmed]`, `[Inferred]`, `[Assumption]`, `[Unknown]`, `[Need Confirmation]` |
| **中文** | `[已確認]`, `[推論]`, `[假設]`, `[未知]`, `[待確認]` |

---

### 3. Git Workflow

**Skill**: `git-workflow-guide`

```markdown
## Git Workflow

### Branching Strategy
This project uses **GitHub Flow**.
<!-- Options: GitFlow | GitHub Flow | Trunk-Based Development -->

### Branch Naming
Format: `<type>/<description>`
Example: `feature/oauth-login`, `fix/memory-leak`

### Merge Strategy
- Feature branches: **Squash Merge**
<!-- Options: Merge Commit | Squash Merge | Rebase -->
```

| Strategy | Best For |
|----------|----------|
| **GitFlow** | Monthly releases, multiple versions |
| **GitHub Flow** (default) | Weekly/bi-weekly releases, simple workflow |
| **Trunk-Based** | Multiple deploys/day, CI/CD mature teams |

| Merge Strategy | When to Use |
|----------------|-------------|
| **Merge Commit** | Long-lived features, GitFlow releases |
| **Squash Merge** | Feature branches, clean history |
| **Rebase** | Trunk-Based, short-lived branches |

---

### 4. Code Review Language

**Skill**: `code-review-assistant`

```markdown
## Code Review Language

This project uses **English** for code review comments.
<!-- Options: English | 中文 -->
```

| Option | Comment Prefixes |
|--------|------------------|
| **English** (default) | `BLOCKING`, `IMPORTANT`, `SUGGESTION`, `QUESTION`, `NOTE` |
| **中文** | `阻擋`, `重要`, `建議`, `問題`, `備註` |

---

### 5. Testing Standards

**Skill**: `testing-guide`

```markdown
## Testing Standards

### Coverage Targets
| Metric | Target |
|--------|--------|
| Line | 80% |
| Branch | 70% |
| Function | 85% |

### Testing Framework
- Unit Tests: Jest
- Integration Tests: Supertest
- E2E Tests: Playwright
```

| Metric | Minimum | Recommended |
|--------|---------|-------------|
| Line | 70% | 85% |
| Branch | 60% | 80% |
| Function | 80% | 90% |

---

### 6. Release Standards

**Skill**: `release-standards`

```markdown
## Release Standards

### Versioning
This project uses **Semantic Versioning** (MAJOR.MINOR.PATCH).

### Changelog
This project follows **Keep a Changelog** format.

### Release Process
1. Update version in package.json
2. Update CHANGELOG.md
3. Create git tag with `v` prefix (e.g., v1.2.0)
4. Push tag to trigger release workflow
```

| Component | When to Increment |
|-----------|-------------------|
| **MAJOR** | Breaking changes |
| **MINOR** | New features (backward-compatible) |
| **PATCH** | Bug fixes (backward-compatible) |

---

### 7. Documentation Language

**Skill**: `documentation-guide`

```markdown
## Documentation Language

This project uses **English** for documentation.
<!-- Options: English | 中文 -->
```

| Option | README Sections |
|--------|-----------------|
| **English** (default) | Installation, Usage, Contributing, License |
| **中文** | 安裝, 使用方式, 貢獻指南, 授權 |

---

### 8. Requirement Language

**Skill**: `requirement-assistant`

```markdown
## Requirement Language

This project uses **English** for requirements and issues.
<!-- Options: English | 中文 -->

### Issue Templates Location
`.github/ISSUE_TEMPLATE/`
```

| Option | User Story Format |
|--------|-------------------|
| **English** (default) | As a [role], I want [feature], So that [benefit]. |
| **中文** | 身為 [角色]，我希望 [功能]，以便 [效益]。 |

---

### Configuration Template

Complete template for your project:

```markdown
## Commit Message Language

This project uses **English** commit types.
<!-- Options: English | Traditional Chinese | Bilingual -->

## Certainty Tag Language

This project uses **English** certainty tags.
<!-- Options: English | 中文 -->

## Git Workflow

### Branching Strategy
This project uses **GitHub Flow**.
<!-- Options: GitFlow | GitHub Flow | Trunk-Based Development -->

### Branch Naming
Format: `<type>/<description>`
Example: `feature/oauth-login`, `fix/memory-leak`

### Merge Strategy
- Feature branches: **Squash Merge**
<!-- Options: Merge Commit | Squash Merge | Rebase -->

## Code Review Language

This project uses **English** for code review comments.
<!-- Options: English | 中文 -->

## Testing Standards

### Coverage Targets
| Metric | Target |
|--------|--------|
| Line | 80% |
| Branch | 70% |
| Function | 85% |

## Release Standards

### Versioning
This project uses **Semantic Versioning** (MAJOR.MINOR.PATCH).

### Changelog
This project follows **Keep a Changelog** format.

## Documentation Language

This project uses **English** for documentation.
<!-- Options: English | 中文 -->

## Requirement Language

This project uses **English** for requirements and issues.
<!-- Options: English | 中文 -->
```

---

## Upstream Sync

This project derives its content from [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards). Use `./sync-upstream.sh` to assist with the sync process.

### Sync Checklist

When upstream releases a new version:

1. **Check upstream changes** at [releases page](https://github.com/AsiaOstrich/universal-dev-standards/releases)
2. **Determine sync type**:

| Upstream Change | Action | Version Bump |
|-----------------|--------|--------------|
| Skills content update | Sync skill files | MINOR |
| Structural optimization | Update version mapping only | MINOR |
| New Skill added | Add skill dir + update install.sh | MINOR |
| Skill removed/renamed | Sync + BREAKING tag | MAJOR |

3. **Update version mapping** in:
   - `README.md` (header + Version Mapping table)
   - `README.zh-TW.md` (header + 版本對照 table)
   - `STANDARDS-COVERAGE.md` (Version Mapping table)

4. **Update CHANGELOG.md** with new entry

5. **Commit and tag**:
   ```bash
   git commit -m "chore(release): prepare vX.Y.0 - sync with upstream vA.B.C"
   git tag vX.Y.0
   ```

### Skill to Source Mapping

| Skill | Upstream Source |
|-------|----------------|
| ai-collaboration-standards | `core/anti-hallucination.md` + `extensions/locales/zh-tw.md` |
| commit-standards | `core/commit-message-guide.md` + `extensions/locales/zh-tw.md` |
| code-review-assistant | `core/code-review-checklist.md` + `core/checkin-standards.md` |
| testing-guide | `core/testing-standards.md` |
| release-standards | `core/versioning.md` + `core/changelog-standards.md` |
| git-workflow-guide | `core/git-workflow.md` |
| documentation-guide | `core/documentation-structure.md` |
| requirement-assistant | `templates/requirement-*.md` |

## Skill Structure

Each skill follows this structure:

```
skills/skill-name/
├── SKILL.md       # Required: Skill definition with YAML frontmatter
├── *.md           # Supporting documentation files
└── (optional)     # Scripts, templates, etc.
```

### SKILL.md Format

```yaml
---
name: skill-name
description: |
  Brief description of what this skill does.
  Use when: [trigger conditions]
  Keywords: keyword1, keyword2
---

# Skill Title

[Skill instructions and content]
```

## Guidelines

1. **Keep descriptions under 1024 characters** - Claude uses this for discovery
2. **Include trigger keywords** - Both English and Chinese if applicable
3. **Focus on actionable guidance** - Skills should guide behavior, not just provide information
4. **Test before submitting** - Verify the skill activates correctly

## Pull Request Process

1. Fork the repository
2. Create a feature branch
3. Make changes
4. Test locally
5. Submit PR with clear description

## License

By contributing, you agree that your contributions will be licensed under the project's dual-license model:

| Content Type | License |
|-------------|---------|
| Documentation (`*.md`) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) |
| Code (`*.sh`, etc.) | [MIT](https://opensource.org/licenses/MIT) |
