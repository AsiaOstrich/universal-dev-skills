# Standards Coverage Report | 規範涵蓋報告

> This document details the relationship between [universal-dev-skills](https://github.com/AsiaOstrich/universal-dev-skills) and [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards).
>
> 本文件詳細說明 universal-dev-skills 與 universal-dev-standards 之間的關係。

---

## Skill to Source Mapping | Skill 與原始規範對照

| Skill | Primary Source | Additional Sources | Coverage |
|-------|---------------|-------------------|----------|
| ai-collaboration-standards | `core/anti-hallucination.md` | `extensions/locales/zh-tw.md` (certainty tags) | Full |
| commit-standards | `core/commit-message-guide.md` | `extensions/locales/zh-tw.md` (commit types) | Full |
| code-review-assistant | `core/code-review-checklist.md` | `core/checkin-standards.md` (quality gates) | Full |
| testing-guide | `core/testing-standards.md` | - | Full |
| release-standards | `core/versioning.md` | `core/changelog-standards.md` | Full |
| git-workflow-guide | `core/git-workflow.md` | - | Full |
| documentation-guide | `core/documentation-structure.md` | - | Partial* |
| requirement-assistant | `templates/requirement-*.md` | - | Full |

*`documentation-writing-standards.md` content not included in documentation-guide skill.

---

## Standards NOT Covered by Skills | 未被 Skills 涵蓋的規範

These standards are **reference documents** that provide guidelines but don't fit the interactive workflow model of Claude Code Skills. Projects should copy them directly from [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards).

這些規範是**參考文件**，提供指南但不適合製作成互動式工作流程的 Skills。專案應直接從 universal-dev-standards 複製。

### Core Standards | 核心規範

| Standard | Description | Why Not a Skill |
|----------|-------------|-----------------|
| `checkin-standards.md` | Pre-commit quality gates | Static checklist, partially in code-review-assistant |
| `spec-driven-development.md` | SDD methodology | Methodology reference, not interactive workflow |
| `documentation-writing-standards.md` | Content writing guidelines | Static style guide |
| `project-structure.md` | Directory conventions | Project-specific, applied once |

### Extensions | 延伸規範

| Standard | Description | Why Not a Skill |
|----------|-------------|-----------------|
| `csharp-style.md` | C# coding conventions | Language-specific lookup reference |
| `php-style.md` | PHP 8.1+ style guide | Language-specific lookup reference |
| `fat-free-patterns.md` | Fat-Free Framework patterns | Framework-specific lookup reference |
| `zh-tw.md` | Traditional Chinese locale | Localization data, partially used by other skills |

### Integrations | 整合配置

| Integration | Description | Why Not a Skill |
|-------------|-------------|-----------------|
| `github-copilot/*` | Copilot instructions | Tool configuration file |
| `cursor/*` | Cursor rules | Tool configuration file |
| `windsurf/*` | Windsurf rules | Tool configuration file |
| `cline/*` | Cline rules | Tool configuration file |
| `google-antigravity/*` | Antigravity integration | Tool configuration file |
| `openspec/*` | SDD tooling | Separate tool framework |

### Templates | 模板

| Template | Description | Why Not a Skill |
|----------|-------------|-----------------|
| `migration-template.md` | Migration planning | One-time document template |

---

## How to Adopt Uncovered Standards | 如何採用未涵蓋的規範

### Option 1: Use Both Projects | 選項一：同時使用兩個專案

1. Install Skills for interactive AI assistance
2. Copy reference documents from universal-dev-standards

```bash
# Install Skills
git clone https://github.com/AsiaOstrich/universal-dev-skills.git
cd universal-dev-skills
./install.sh

# Copy reference documents
mkdir -p your-project/.standards
cp path/to/universal-dev-standards/core/checkin-standards.md your-project/.standards/
cp path/to/universal-dev-standards/core/spec-driven-development.md your-project/.standards/
```

### Option 2: Use Adoption Guide | 選項二：使用採用指南

See the comprehensive [Adoption Guide](https://github.com/AsiaOstrich/universal-dev-standards/blob/main/adoption/ADOPTION-GUIDE.md) for:

- Complete standards matrix
- Level-based adoption checklists
- Common mistakes to avoid

---

## Important Note | 重要提示

**For standards with Skills available**: Use the Skill OR copy the source document — **never both**.

**對於有 Skills 的規範**：使用 Skill 或複製原始文件 — **擇一即可，不要兩者都做**。

This prevents confusion and ensures consistency in how standards are applied.

---

## Version Mapping | 版本對照

| universal-dev-skills | universal-dev-standards | Changes |
|----------------------|------------------------|---------|
| v2.0.0 | v2.2.0 | Update upstream source (project renamed, Skills integrated) |
| v1.1.0 | v1.3.1 | Added requirement-assistant |
| v1.0.0 | v1.3.0 | Initial release with 7 skills |

---

## Related Links | 相關連結

- [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards) - Source of truth for all standards
- [Adoption Guide](https://github.com/AsiaOstrich/universal-dev-standards/blob/main/adoption/ADOPTION-GUIDE.md) - Complete adoption guidance
- [Standards Registry](https://github.com/AsiaOstrich/universal-dev-standards/blob/main/adoption/standards-registry.json) - Machine-readable mapping
