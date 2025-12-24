# Universal Dev Skills

[English](README.md) | [繁體中文](README.zh-TW.md)

軟體開發標準的 Claude Code Skills。

> 衍生自 [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards) v2.3.0

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

Skills 支援透過專案的 `CONTRIBUTING.md` 進行專案層級設定。

### 停用 Skills 的兩種方式

| 層級 | 方法 | 適用情境 |
|------|------|----------|
| **專案層級**（推薦） | 在 `CONTRIBUTING.md` 加入 `## Disabled Skills` | 僅影響當前專案，可版控共享 |
| **全域層級** | 從 `~/.claude/skills/` 刪除 | 影響所有專案 |

### 專案層級停用（推薦）

在專案的 `CONTRIBUTING.md` 中加入：

```markdown
## Disabled Skills

- testing-guide
- release-standards
<!-- 列出的 skills 將被停用 -->
```

### 各 Skill 專屬選項

| Skill | 設定項目 | 預設值 |
|-------|----------|--------|
| `commit-standards` | 提交訊息語言 | English |
| `ai-collaboration-standards` | 確定性標籤語言 | English |
| `git-workflow-guide` | 分支/合併策略 | GitHub Flow |
| `code-review-assistant` | 審查評論語言 | English |
| `testing-guide` | 覆蓋率目標 | 80% line |
| `release-standards` | 版本格式 | SemVer |
| `documentation-guide` | 文件語言 | English |
| `requirement-assistant` | 需求語言 | English |

### 如何設定

在專案的 `CONTRIBUTING.md` 中加入區塊：

```markdown
## Disabled Skills

- testing-guide
<!-- 僅列出要停用的 skills -->

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

### Merge Strategy
- Feature branches: **Squash Merge**
<!-- Options: Merge Commit | Squash Merge | Rebase -->

## Code Review Language

This project uses **中文** for code review comments.
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

This project uses **中文** for documentation.
<!-- Options: English | 中文 -->

## Requirement Language

This project uses **中文** for requirements and issues.
<!-- Options: English | 中文 -->
```

### 設定範本

完整設定選項請參閱 [CONTRIBUTING.md 的 Skill Configuration 章節](CONTRIBUTING.md#skill-configuration)。

獨立範本檔案請參閱 [CONTRIBUTING.template.md](CONTRIBUTING.template.md)，複製到你的專案並依需求調整。

### 預設行為

如果沒有找到設定：
1. 所有 skills **預設啟用**
2. Skills 預設使用 **English** 以獲得最佳工具相容性
3. 首次使用且上下文不明確時，Claude 可能會詢問你的偏好
4. Claude 會建議將選擇記錄在 `CONTRIBUTING.md`

## 全域層級管理

### 解除安裝 Skill

從所有專案移除特定 skill：

```bash
rm -rf ~/.claude/skills/[skill-name]
```

### Skill 優先順序

當同一個 skill 同時存在於兩個位置時：
1. **專案層級** (`.claude/skills/`) 優先
2. **全域層級** (`~/.claude/skills/`) 作為備用

這讓你可以針對不同專案覆蓋特定 skills 的行為。

### 更新 Skills

重新安裝或更新 skills：

```bash
cd universal-dev-skills
git pull
./install.sh
```

## 使用方式

安裝後，Claude Code 會根據上下文自動發現並使用這些 skills。例如：

- 當你請 Claude「撰寫提交訊息」時，它會遵循 `commit-standards` skill
- 審查程式碼時，Claude 會套用 `code-review-assistant` 檢查清單
- 提出建議時，Claude 會使用 `ai-collaboration-standards` 的確定性標籤

## 上游來源

這些 skills 衍生自 [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards)，一個完整的文件標準庫。

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

| universal-dev-skills | universal-dev-standards |
|----------------------|------------------------|
| v2.1.0 | v2.3.0 |
| v2.0.0 | v2.2.0 |
| v1.1.0 | v1.3.1 |
| v1.0.0 | v1.3.0 |

## 貢獻

請參閱 [CONTRIBUTING.md](CONTRIBUTING.md) 了解貢獻指南。

## 授權

本專案採用**雙授權**模式：

| 內容類型 | 授權 |
|---------|------|
| 文件 (`*.md`) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) |
| 程式碼 (`*.sh` 等) | [MIT](https://opensource.org/licenses/MIT) |

詳見 [LICENSE](LICENSE)。
