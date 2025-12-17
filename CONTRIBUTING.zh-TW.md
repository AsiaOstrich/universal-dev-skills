# 貢獻指南

[English](CONTRIBUTING.md) | [繁體中文](CONTRIBUTING.zh-TW.md)

感謝你有興趣為本專案做出貢獻！

---

## Skill 設定

部分 Skills 支援專案層級設定。在專案的 `CONTRIBUTING.md` 中加入以下章節即可自訂行為。

### 1. 提交訊息語言

**Skill**: `commit-standards`

```markdown
## Commit Message Language

This project uses **Traditional Chinese** commit types.
<!-- Options: English | Traditional Chinese | Bilingual -->

### Allowed Types
新增, 修正, 重構, 文件, 樣式, 測試, 效能, 建置, 整合, 維護, 回退, 安全
```

| 選項 | 範例 |
|------|------|
| **English**（預設） | `feat(auth): Add OAuth2 login` |
| **Traditional Chinese** | `新增(認證): 實作 OAuth2 登入` |
| **Bilingual** | `feat(auth): Add OAuth2 login. 新增 OAuth2 登入。` |

---

### 2. 確定性標籤語言

**Skill**: `ai-collaboration-standards`

```markdown
## Certainty Tag Language

This project uses **中文** certainty tags.
<!-- Options: English | 中文 -->
```

| 選項 | 標籤 |
|------|------|
| **English**（預設） | `[Confirmed]`, `[Inferred]`, `[Assumption]`, `[Unknown]`, `[Need Confirmation]` |
| **中文** | `[已確認]`, `[推論]`, `[假設]`, `[未知]`, `[待確認]` |

---

### 3. Git 工作流程

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

| 策略 | 適用情境 |
|------|----------|
| **GitFlow** | 每月發布、多版本並行 |
| **GitHub Flow**（預設） | 每週/雙週發布、簡單流程 |
| **Trunk-Based** | 每日多次部署、CI/CD 成熟團隊 |

| 合併策略 | 使用時機 |
|----------|----------|
| **Merge Commit** | 長期功能分支、GitFlow 發布 |
| **Squash Merge** | 功能分支、保持乾淨歷史 |
| **Rebase** | Trunk-Based、短期分支 |

---

### 設定範本

完整範本供複製使用：

```markdown
## Commit Message Language

This project uses **Traditional Chinese** commit types.
<!-- Options: English | Traditional Chinese | Bilingual -->

## Certainty Tag Language

This project uses **中文** certainty tags.
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

## 上游同步

本專案的內容衍生自 [universal-doc-standards](https://github.com/AsiaOstrich/universal-doc-standards)。更新 Skills 時：

1. 檢查上游是否有更新
2. 同步相關變更到 Skills
3. 更新 README.md 中的版本對照

## Skill 結構

每個 Skill 遵循以下結構：

```
skills/skill-name/
├── SKILL.md       # 必要：包含 YAML frontmatter 的 Skill 定義
├── *.md           # 支援文件
└── (optional)     # 腳本、範本等
```

### SKILL.md 格式

```yaml
---
name: skill-name
description: |
  簡短描述此 Skill 的功能。
  Use when: [觸發條件]
  Keywords: keyword1, keyword2, 關鍵字
---

# Skill 標題

[Skill 指引與內容]
```

## 貢獻指南

1. **描述控制在 1024 字元以內** - Claude 使用此欄位進行探索
2. **包含觸發關鍵字** - 如適用，同時包含英文與中文
3. **著重可執行的指引** - Skills 應引導行為，而非僅提供資訊
4. **提交前先測試** - 確認 Skill 能正確觸發

## Pull Request 流程

1. Fork 此儲存庫
2. 建立功能分支
3. 進行修改
4. 本機測試
5. 提交 PR 並附上清楚的描述

## 授權

貢獻本專案即表示你同意你的貢獻將以專案的雙授權模式釋出：

| 內容類型 | 授權 |
|---------|------|
| 文件 (`*.md`) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) |
| 程式碼 (`*.sh` 等) | [MIT](https://opensource.org/licenses/MIT) |
