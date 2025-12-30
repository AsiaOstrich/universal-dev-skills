# ⚠️ This Repository Has Been Archived

**All functionality has been merged into [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards).**

---

## Migration Guide | 遷移指南

### For New Users | 新用戶

Use the new unified CLI tool:

```bash
# Install via npm
npm install -g universal-dev-standards

# Initialize in your project
cd your-project
npx uds init
```

The CLI will guide you through:
- Selecting which standards to adopt
- Installing Claude Code Skills
- Setting up AI tool integrations

📦 **npm**: https://www.npmjs.com/package/universal-dev-standards

### For Existing Users | 現有用戶

If you previously installed skills from this repository:

1. **Remove old skills**:
   ```bash
   rm -rf ~/.claude/skills/*
   ```

2. **Install via new method**:
   ```bash
   npm install -g universal-dev-standards
   cd your-project
   npx uds init
   ```
   
   When prompted, select "Yes" to install Claude Code Skills.

3. **Skills are now located at**:
   - New location: `universal-dev-standards/skills/claude-code/`
   - Installation: Handled automatically by `uds init`

### What Changed | 變更內容

| Before (v2.x) | After (v3.0.0) |
|---------------|----------------|
| Separate repository | Merged into main repo |
| Manual installation via `install.sh` | Automated via `npx uds init` |
| 8 skills | 14 skills (6 new!) |
| Clone + run script | npm package |

### New Skills in v3.0.0 | v3.0.0 新增技能

- `spec-driven-dev` - Spec-Driven Development methodology
- `test-coverage-assistant` - Test completeness evaluation
- `changelog-guide` - Changelog formatting
- `error-code-guide` - Error code standards
- `logging-guide` - Logging best practices
- `project-structure-guide` - Project directory conventions

---

## New Repository | 新專案位置

📖 **GitHub**: https://github.com/AsiaOstrich/universal-dev-standards

📦 **npm**: https://www.npmjs.com/package/universal-dev-standards

📚 **Skills location**: https://github.com/AsiaOstrich/universal-dev-standards/tree/main/skills/claude-code

---

## Historical Documentation | 歷史文件

The content below is preserved for reference only. For current documentation, please visit the new repository.

<details>
<summary>Click to expand original README | 點擊展開原始 README</summary>

# Universal Dev Skills

[English](README.md) | [繁體中文](README.zh-TW.md)

Claude Code Skills for software development standards.

> Derived from [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards) v2.3.0

## Overview

This project provides Claude Code Skills that bring software development best practices directly into your AI-assisted workflow. When you use Claude Code, these skills are automatically triggered based on context, helping you:

- Prevent AI hallucination with evidence-based responses
- Write consistent, well-formatted commit messages
- Conduct thorough code reviews
- Follow testing best practices
- Manage releases with semantic versioning

## Available Skills

| Skill | Description | Triggers |
|-------|-------------|----------|
| `ai-collaboration-standards` | Prevent AI hallucination, ensure evidence-based analysis | Code analysis, suggestions, "確定性", "certainty" |
| `commit-standards` | Format commit messages following Conventional Commits | "commit", "提交", git commit operations |
| `code-review-assistant` | Systematic code review checklist | "review", "PR", "code review" |
| `testing-guide` | Testing pyramid and test writing standards | Writing tests, test coverage discussions |
| `release-standards` | Semantic versioning and changelog formatting | Release preparation, version updates |
| `git-workflow-guide` | Git branching strategies and merge operations | "branch", "merge", "PR", "分支", "合併" |
| `documentation-guide` | Documentation structure and README best practices | "README", "docs", "documentation", "文件" |
| `requirement-assistant` | Requirement writing and user story guidance | "requirement", "user story", "issue", "需求" |

## Version Mapping

| universal-dev-skills | universal-dev-standards |
|----------------------|------------------------|
| v2.1.0 | v2.3.0 |
| v2.0.0 | v2.2.0 |
| v1.1.0 | v1.3.1 |
| v1.0.0 | v1.3.0 |

## License

This project uses a **dual-license** model:

| Content Type | License |
|-------------|---------|
| Documentation (`*.md`) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) |
| Code (`*.sh`, etc.) | [MIT](https://opensource.org/licenses/MIT) |

</details>
