# ⚠️ 此專案已封存

**所有功能已合併至 [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards)。**

---

## 遷移指南

### 新用戶

使用新的統一 CLI 工具：

```bash
# 透過 npm 安裝
npm install -g universal-dev-standards

# 在專案中初始化
cd your-project
npx uds init
```

CLI 將引導你：
- 選擇要採用的標準
- 安裝 Claude Code Skills
- 設定 AI 工具整合

📦 **npm**: https://www.npmjs.com/package/universal-dev-standards

### 現有用戶

如果你之前從此儲存庫安裝了 skills：

1. **移除舊的 skills**：
   ```bash
   rm -rf ~/.claude/skills/*
   ```

2. **使用新方法安裝**：
   ```bash
   npm install -g universal-dev-standards
   cd your-project
   npx uds init
   ```
   
   當提示時，選擇「是」來安裝 Claude Code Skills。

3. **Skills 新位置**：
   - 新位置：`universal-dev-standards/skills/claude-code/`
   - 安裝：由 `uds init` 自動處理

### 變更內容

| 之前 (v2.x) | 之後 (v3.0.0) |
|-------------|---------------|
| 獨立儲存庫 | 合併至主專案 |
| 透過 `install.sh` 手動安裝 | 透過 `npx uds init` 自動化 |
| 8 個 skills | 14 個 skills（新增 6 個！）|
| 複製 + 執行腳本 | npm 套件 |

### v3.0.0 新增技能

- `spec-driven-dev` - 規格驅動開發方法論
- `test-coverage-assistant` - 測試完整性評估
- `changelog-guide` - 變更日誌格式
- `error-code-guide` - 錯誤碼標準
- `logging-guide` - 日誌最佳實踐
- `project-structure-guide` - 專案目錄規範

---

## 新專案位置

📖 **GitHub**: https://github.com/AsiaOstrich/universal-dev-standards

📦 **npm**: https://www.npmjs.com/package/universal-dev-standards

📚 **Skills 位置**: https://github.com/AsiaOstrich/universal-dev-standards/tree/main/skills/claude-code

---

## 歷史文件

以下內容僅供參考保留。如需最新文件，請訪問新專案。

<details>
<summary>點擊展開原始 README</summary>

# Universal Dev Skills

[English](README.md) | [繁體中文](README.zh-TW.md)

軟體開發標準的 Claude Code Skills。

> 衍生自 [universal-dev-standards](https://github.com/AsiaOstrich/universal-dev-standards) v2.3.0

## 概述

本專案提供 Claude Code Skills，將軟體開發最佳實踐直接整合到你的 AI 輔助工作流程中。

## 可用 Skills

| Skill | 說明 | 觸發條件 |
|-------|------|----------|
| `ai-collaboration-standards` | 防止 AI 幻覺，確保基於證據的分析 | 程式碼分析、建議、「確定性」 |
| `commit-standards` | 遵循 Conventional Commits 格式化提交訊息 | "commit"、「提交」 |
| `code-review-assistant` | 系統化的程式碼審查檢查清單 | "review"、"PR" |
| `testing-guide` | 測試金字塔與測試撰寫標準 | 撰寫測試 |
| `release-standards` | 語意化版本與變更日誌格式 | 發布準備 |
| `git-workflow-guide` | Git 分支策略與合併操作指南 | "branch"、「分支」 |
| `documentation-guide` | 文件結構與 README 最佳實踐 | "README"、「文件」 |
| `requirement-assistant` | 需求撰寫與使用者故事指南 | "requirement"、「需求」 |

## 版本對照

| universal-dev-skills | universal-dev-standards |
|----------------------|------------------------|
| v2.1.0 | v2.3.0 |
| v2.0.0 | v2.2.0 |
| v1.1.0 | v1.3.1 |
| v1.0.0 | v1.3.0 |

## 授權

本專案採用**雙授權**模式：

| 內容類型 | 授權 |
|---------|------|
| 文件 (`*.md`) | [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) |
| 程式碼 (`*.sh` 等) | [MIT](https://opensource.org/licenses/MIT) |

</details>
