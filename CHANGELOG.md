# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0] - 2025-12-25

### Changed

- **BREAKING**: Update upstream source from `universal-doc-standards` to `universal-dev-standards`
  更新上游來源從 `universal-doc-standards` 至 `universal-dev-standards`
- Sync with upstream v2.2.0 (Skills integrated into main repo at v2.1.0)
  與上游 v2.2.0 同步（Skills 已在 v2.1.0 整合至主倉庫）
- Update all source references in documentation and skill files (29 files, 52 occurrences)
  更新所有文件與 Skill 檔案中的來源參考（29 個檔案，52 處）

## [1.1.0] - 2025-12-19

### Added

- CHANGELOG.md following Keep a Changelog format

### Changed

- Sync with universal-dev-standards v1.3.1
- Update testing-guide skill with Mock Limitations section
- Update testing-guide skill with Integration Test requirements table
- Update testing-guide skill with Distinct Identifiers pattern
- Update testing-guide skill with Composite Keys pattern
- Reorganize README sections for clearer skill management guidance
  - Add "Two Ways to Disable Skills" comparison table
  - Rename "Managing Skills" to "Global-level Management"
  - Emphasize project-level disable via CONTRIBUTING.md as recommended approach

## [1.0.0] - 2025-12-17

### Added

- Initial release with 8 skills:
  - `ai-collaboration-standards`: Prevent AI hallucination with certainty tags
  - `commit-standards`: Conventional Commits formatting
  - `code-review-assistant`: Systematic code review checklist
  - `testing-guide`: Testing pyramid and coverage standards
  - `release-standards`: Semantic versioning and changelog format
  - `git-workflow-guide`: Git branching and merge strategies
  - `documentation-guide`: Documentation structure best practices
  - `requirement-assistant`: User story and requirement writing
- Two-layer configuration system (project-level via CONTRIBUTING.md)
- Dual-license model (CC BY 4.0 for docs, MIT for code)
- Derived from universal-dev-standards v1.3.0

[Unreleased]: https://github.com/AsiaOstrich/universal-dev-skills/compare/v2.0.0...HEAD
[2.0.0]: https://github.com/AsiaOstrich/universal-dev-skills/compare/v1.1.0...v2.0.0
[1.1.0]: https://github.com/AsiaOstrich/universal-dev-skills/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/AsiaOstrich/universal-dev-skills/releases/tag/v1.0.0
