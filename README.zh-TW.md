# Universal Dev Skills

[English](README.md) | [繁體中文](README.zh-TW.md)

軟體開發標準的 Claude Code Skills。

> 衍生自 [universal-doc-standards](https://github.com/AsiaOstrich/universal-doc-standards) v1.3.0

## 概述

本專案提供 Claude Code Skills，將軟體開發最佳實踐直接整合到你的 AI 輔助工作流程中。當你使用 Claude Code 時，這些 Skills 會根據上下文自動觸發，幫助你：

- 透過基於證據的回應防止 AI 幻覺
- 撰寫一致且格式良好的提交訊息
- 進行徹底的程式碼審查
- 遵循測試最佳實踐
- 使用語意化版本管理發布

## 可用 Skills

| Skill | 說明 | 觸發條件 |
|-------|------|----------|
| `ai-collaboration-standards` | 防止 AI 幻覺，確保基於證據的分析 | 程式碼分析、建議、「確定性」、"certainty" |
| `commit-standards` | 遵循 Conventional Commits 格式化提交訊息 | "commit"、「提交」、git commit 操作 |
| `code-review-assistant` | 系統化的程式碼審查檢查清單 | "review"、"PR"、"code review" |
| `testing-guide` | 測試金字塔與測試撰寫標準 | 撰寫測試、測試覆蓋率討論 |
| `release-standards` | 語意化版本與變更日誌格式 | 發布準備、版本更新 |
| `git-workflow-guide` | Git 分支策略與合併操作指南 | "branch"、"merge"、"PR"、「分支」、「合併」 |
| `documentation-guide` | 文件結構與 README 最佳實踐 | "README"、"docs"、"documentation"、「文件」 |
| `requirement-assistant` | 需求撰寫與使用者故事指南 | "requirement"、"user story"、"issue"、「需求」 |

## 安裝

### 快速安裝（所有 Skills）

```bash
git clone https://github.com/AsiaOstrich/universal-dev-skills.git
cd universal-dev-skills
./install.sh
```

### 手動安裝（選擇性 Skills）

```bash
# 複製儲存庫
git clone https://github.com/AsiaOstrich/universal-dev-skills.git

# 將所需的 skills 複製到 Claude skills 目錄
mkdir -p ~/.claude/skills
cp -r universal-dev-skills/skills/ai-collaboration-standards ~/.claude/skills/
cp -r universal-dev-skills/skills/commit-standards ~/.claude/skills/
```

### 專案層級安裝

透過 Git 與團隊共享 skills：

```bash
# 在專案根目錄
mkdir -p .claude/skills
cp -r /path/to/universal-dev-skills/skills/* .claude/skills/
git add .claude/skills
git commit -m "chore: add universal-dev-skills"
```

## 設定

部分 skills 支援專案層級設定（例如語言偏好）。設定會從專案的 `CONTRIBUTING.md` 讀取。

### 可設定選項

| Skill | 設定項目 | 預設值 |
|-------|----------|--------|
| `commit-standards` | 提交訊息語言 | English |
| `ai-collaboration-standards` | 確定性標籤語言 | English |

### 如何設定

在專案的 `CONTRIBUTING.md` 中加入以下區塊：

```markdown
## Commit Message Language

This project uses **Traditional Chinese** commit types.
<!-- Options: English | Traditional Chinese | Bilingual -->

## Certainty Tag Language

This project uses **中文** certainty tags.
<!-- Options: English | 中文 -->
```

### 設定範本

完整範本請參閱 [CONTRIBUTING.template.md](CONTRIBUTING.template.md)。複製到你的專案並依需求調整。

### 預設行為

如果沒有找到設定：
1. Skills 預設使用 **English** 以獲得最佳工具相容性
2. 首次使用且上下文不明確時，Claude 可能會詢問你的偏好
3. Claude 會建議將選擇記錄在 `CONTRIBUTING.md`

## 使用方式

安裝後，Claude Code 會根據上下文自動發現並使用這些 skills。例如：

- 當你請 Claude「撰寫提交訊息」時，它會遵循 `commit-standards` skill
- 審查程式碼時，Claude 會套用 `code-review-assistant` 檢查清單
- 提出建議時，Claude 會使用 `ai-collaboration-standards` 的確定性標籤

## 上游來源

這些 skills 衍生自 [universal-doc-standards](https://github.com/AsiaOstrich/universal-doc-standards)，一個完整的文件標準庫。

| Skill | 上游來源 |
|-------|---------|
| ai-collaboration-standards | `core/anti-hallucination.md`、`extensions/locales/zh-tw.md` |
| commit-standards | `core/commit-message-guide.md`、`extensions/locales/zh-tw.md` |
| code-review-assistant | `core/code-review-checklist.md`、`core/checkin-standards.md` |
| testing-guide | `core/testing-standards.md` |
| release-standards | `core/versioning.md`、`core/changelog-standards.md` |
| git-workflow-guide | `core/git-workflow.md` |
| documentation-guide | `core/documentation-structure.md` |
| requirement-assistant | `templates/requirement-*.md` |

## 版本對照

| universal-dev-skills | universal-doc-standards |
|----------------------|------------------------|
| v1.0.0 | v1.3.0 |

## 貢獻

請參閱 [CONTRIBUTING.md](CONTRIBUTING.md) 了解貢獻指南。

## 授權

本專案採用 [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) 授權。

你可以自由地：
- **分享** — 複製及散布本素材
- **改作** — 重混、轉換、及依本素材建立新素材

惟需遵守以下條件：
- **姓名標示** — 你必須給予適當的姓名標示
