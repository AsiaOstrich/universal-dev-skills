# Universal Dev Skills

[English](README.md) | [繁體中文](README.zh-TW.md)

Claude Code Skills for software development standards.

> Derived from [universal-doc-standards](https://github.com/AsiaOstrich/universal-doc-standards) v1.3.0

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

## Installation

### Quick Install (All Skills)

```bash
git clone https://github.com/AsiaOstrich/universal-dev-skills.git
cd universal-dev-skills
./install.sh
```

### Manual Install (Select Skills)

```bash
# Clone the repository
git clone https://github.com/AsiaOstrich/universal-dev-skills.git

# Copy desired skills to your Claude skills directory
mkdir -p ~/.claude/skills
cp -r universal-dev-skills/skills/ai-collaboration-standards ~/.claude/skills/
cp -r universal-dev-skills/skills/commit-standards ~/.claude/skills/
```

### Project-Level Installation

To share skills with your team via Git:

```bash
# In your project root
mkdir -p .claude/skills
cp -r /path/to/universal-dev-skills/skills/* .claude/skills/
git add .claude/skills
git commit -m "chore: add universal-dev-skills"
```

## Configuration

Some skills support project-specific configuration (e.g., language preferences). Configuration is read from your project's `CONTRIBUTING.md`.

### Configurable Options

| Skill | Configuration | Default |
|-------|---------------|---------|
| `commit-standards` | Commit message language | English |
| `ai-collaboration-standards` | Certainty tag language | English |

### How to Configure

Add the following sections to your project's `CONTRIBUTING.md`:

```markdown
## Commit Message Language

This project uses **English** commit types.
<!-- Options: English | Traditional Chinese | Bilingual -->

## Certainty Tag Language

This project uses **English** certainty tags.
<!-- Options: English | 中文 -->
```

### Configuration Template

A complete template is available at [CONTRIBUTING.template.md](CONTRIBUTING.template.md). Copy it to your project and customize as needed.

### Default Behavior

If no configuration is found:
1. Skills default to **English** for maximum tool compatibility
2. On first use with unclear context, Claude may ask for your preference
3. Claude will suggest documenting your choice in `CONTRIBUTING.md`

## Usage

Once installed, Claude Code will automatically discover and use these skills based on context. For example:

- When you ask Claude to "write a commit message", it will follow the `commit-standards` skill
- When reviewing code, Claude will apply the `code-review-assistant` checklist
- When making suggestions, Claude will use certainty tags from `ai-collaboration-standards`

## Upstream Source

These skills are derived from [universal-doc-standards](https://github.com/AsiaOstrich/universal-doc-standards), a comprehensive documentation standards library.

| Skill | Upstream Source |
|-------|----------------|
| ai-collaboration-standards | `core/anti-hallucination.md`, `extensions/locales/zh-tw.md` |
| commit-standards | `core/commit-message-guide.md`, `extensions/locales/zh-tw.md` |
| code-review-assistant | `core/code-review-checklist.md`, `core/checkin-standards.md` |
| testing-guide | `core/testing-standards.md` |
| release-standards | `core/versioning.md`, `core/changelog-standards.md` |
| git-workflow-guide | `core/git-workflow.md` |
| documentation-guide | `core/documentation-structure.md` |
| requirement-assistant | `templates/requirement-*.md` |

## Version Mapping

| universal-dev-skills | universal-doc-standards |
|----------------------|------------------------|
| v1.0.0 | v1.3.0 |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

This project is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).

You are free to:
- **Share** — copy and redistribute the material
- **Adapt** — remix, transform, and build upon the material

Under the following terms:
- **Attribution** — You must give appropriate credit
