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

Skills support project-specific configuration through your project's `CONTRIBUTING.md`.

### Two Ways to Disable Skills

| Level | Method | Use Case |
|-------|--------|----------|
| **Project-level** (Recommended) | Add `## Disabled Skills` section to `CONTRIBUTING.md` | Affects only current project, version-controlled |
| **Global-level** | Remove from `~/.claude/skills/` | Affects all projects |

### Project-level Disable (Recommended)

Add to your project's `CONTRIBUTING.md`:

```markdown
## Disabled Skills

- testing-guide
- release-standards
<!-- Skills listed here will be disabled -->
```

### Skill-Specific Options

| Skill | Configuration | Default |
|-------|---------------|---------|
| `commit-standards` | Commit message language | English |
| `ai-collaboration-standards` | Certainty tag language | English |
| `git-workflow-guide` | Branching/merge strategy | GitHub Flow |
| `code-review-assistant` | Review comment language | English |
| `testing-guide` | Coverage targets | 80% line |
| `release-standards` | Versioning format | SemVer |
| `documentation-guide` | Documentation language | English |
| `requirement-assistant` | Requirement language | English |

### How to Configure

Add sections to your project's `CONTRIBUTING.md`:

```markdown
## Disabled Skills

- testing-guide
<!-- Only list skills you want to disable -->

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

### Configuration Template

See the [Skill Configuration](CONTRIBUTING.md#skill-configuration) section in CONTRIBUTING.md for complete configuration options.

A standalone template file is available at [CONTRIBUTING.template.md](CONTRIBUTING.template.md) - copy it to your project and customize as needed.

### Default Behavior

If no configuration is found:
1. All skills are **enabled** by default
2. Skills default to **English** for maximum tool compatibility
3. On first use with unclear context, Claude may ask for your preference
4. Claude will suggest documenting your choice in `CONTRIBUTING.md`

## Global-level Management

### Uninstall a Skill

Remove a skill from all projects:

```bash
rm -rf ~/.claude/skills/[skill-name]
```

### Skill Priority

When the same skill exists in both locations:
1. **Project level** (`.claude/skills/`) takes precedence
2. **Global level** (`~/.claude/skills/`) is used as fallback

This allows you to override specific skill behavior per project.

### Update Skills

To reinstall or update skills:

```bash
cd universal-dev-skills
git pull
./install.sh
```

## Usage

Once installed, Claude Code will automatically discover and use these skills based on context. For example:

- When you ask Claude to "write a commit message", it will follow the `commit-standards` skill
- When reviewing code, Claude will apply the `code-review-assistant` checklist
- When making suggestions, Claude will use certainty tags from `ai-collaboration-standards`

## Upstream Source

These skills are derived from [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards), a comprehensive documentation standards library.

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

### Standards NOT Covered by Skills

Not all standards from universal-dev-standards are converted to Skills. The following are **reference documents** that should be copied directly to your project:

| Standard | Description |
|----------|-------------|
| `checkin-standards.md` | Pre-commit quality gates |
| `spec-driven-development.md` | SDD methodology |
| `documentation-writing-standards.md` | Content writing guidelines |
| `project-structure.md` | Directory conventions |
| Language/Framework extensions | Coding style guides |
| AI tool integrations | Tool configuration files |

> **Important**: For standards with Skills available, use the Skill OR copy the source document — **never both**.

📖 See [STANDARDS-COVERAGE.md](STANDARDS-COVERAGE.md) for complete coverage details.
📖 See [Adoption Guide](https://github.com/AsiaOstrich/universal-dev-standards/blob/main/adoption/ADOPTION-GUIDE.md) for comprehensive adoption guidance.

## Version Mapping

| universal-dev-skills | universal-dev-standards |
|----------------------|------------------------|
| v2.1.0 | v2.3.0 |
| v2.0.0 | v2.2.0 |
| v1.1.0 | v1.3.1 |
| v1.0.0 | v1.3.0 |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

This project uses a **dual-license** model:

| Content Type | License |
|-------------|---------|
| Documentation (`*.md`) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) |
| Code (`*.sh`, etc.) | [MIT](https://opensource.org/licenses/MIT) |

See [LICENSE](LICENSE) for details.
