#!/bin/bash
# sync-upstream.sh - 上游同步輔助腳本
# Upstream sync helper script for universal-dev-skills
# 用法 / Usage: ./sync-upstream.sh

set -e

UPSTREAM_REPO="https://github.com/AsiaOstrich/universal-dev-standards"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "╔════════════════════════════════════════════════════╗"
echo "║     Universal Dev Skills - 上游同步輔助工具       ║"
echo "║     Upstream Sync Helper                          ║"
echo "╚════════════════════════════════════════════════════╝"
echo ""

# 步驟 1: 顯示上游連結
echo "📋 步驟 1 / Step 1: 查看上游最新版本 / Check upstream releases"
echo "   $UPSTREAM_REPO/releases"
echo ""

# 步驟 2: 取得版本資訊
read -p "🏷️  上游版本號 / Upstream version (e.g., v2.4.0): " UPSTREAM_VERSION
read -p "🏷️  本專案新版本號 / New local version (e.g., v2.2.0): " LOCAL_VERSION
echo ""

# 步驟 3: 取得變更摘要
read -p "📝 變更摘要 (英文) / Change summary (English): " CHANGE_EN
read -p "📝 變更摘要 (中文) / Change summary (Chinese): " CHANGE_ZH
echo ""

# 取得當前日期
TODAY=$(date +%Y-%m-%d)

# 步驟 4: 顯示需要更新的檔案
echo "═══════════════════════════════════════════════════════════"
echo "📁 需要更新的檔案 / Files to update:"
echo ""
echo "   1. README.md"
echo "      - 開頭版本號 / Header version → ${UPSTREAM_VERSION}"
echo "      - Version Mapping 表格新增一行"
echo ""
echo "   2. README.zh-TW.md"
echo "      - 開頭版本號 / Header version → ${UPSTREAM_VERSION}"
echo "      - 版本對照表格新增一行"
echo ""
echo "   3. STANDARDS-COVERAGE.md"
echo "      - Version Mapping 表格新增一行"
echo ""
echo "   4. CHANGELOG.md"
echo "      新增條目 / Add entry:"
echo "      ┌─────────────────────────────────────────────────────┐"
echo "      │ ## [${LOCAL_VERSION}] - ${TODAY}                    "
echo "      │                                                     "
echo "      │ ### Changed                                         "
echo "      │                                                     "
echo "      │ - ${CHANGE_EN}                                      "
echo "      │   ${CHANGE_ZH}                                      "
echo "      └─────────────────────────────────────────────────────┘"
echo ""
echo "═══════════════════════════════════════════════════════════"
echo ""

# 步驟 5: 提供提交指令
echo "✅ 完成檔案更新後，執行 / After updating files, run:"
echo ""
echo "   git add README.md README.zh-TW.md STANDARDS-COVERAGE.md CHANGELOG.md"
echo "   git commit -m 'chore(release): prepare ${LOCAL_VERSION} - sync with upstream ${UPSTREAM_VERSION}'"
echo "   git push origin main"
echo "   git tag ${LOCAL_VERSION}"
echo "   git push origin ${LOCAL_VERSION}"
echo ""
echo "📖 詳細指南請參閱 / See detailed guide in:"
echo "   CONTRIBUTING.md → Upstream Sync"
echo ""
