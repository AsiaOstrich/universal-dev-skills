# Contributing to Universal Dev Skills

[English](CONTRIBUTING.md) | [繁體中文](CONTRIBUTING.zh-TW.md)

Thank you for your interest in contributing!

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
```

---

## Upstream Sync

This project derives its content from [universal-doc-standards](https://github.com/AsiaOstrich/universal-doc-standards). When updating skills:

1. Check upstream for updates
2. Sync relevant changes to skills
3. Update version mapping in README.md

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
