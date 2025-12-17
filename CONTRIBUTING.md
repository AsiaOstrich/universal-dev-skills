# Contributing to Universal Dev Skills

Thank you for your interest in contributing!

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
  Keywords: keyword1, keyword2, 關鍵字
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

By contributing, you agree that your contributions will be licensed under CC BY 4.0.
