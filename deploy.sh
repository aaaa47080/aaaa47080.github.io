#!/bin/bash

# GitHub Pages 履歷部署腳本

echo "================================"
echo "  GitHub Pages 履歷部署工具"
echo "================================"
echo ""

# 檢查是否在正確的目錄
if [ ! -f "index.html" ]; then
    echo "❌ 錯誤：找不到 index.html 文件"
    echo "請確保在履歷專案目錄中執行此腳本"
    exit 1
fi

# 獲取用戶的 GitHub 用戶名
read -p "請輸入你的 GitHub 用戶名: " username

if [ -z "$username" ]; then
    echo "❌ 錯誤：用戶名不能為空"
    exit 1
fi

repo_name="${username}.github.io"
repo_url="https://github.com/${username}/${repo_name}.git"

echo ""
echo "倉庫名稱: $repo_name"
echo "倉庫 URL: $repo_url"
echo ""

# 檢查是否已經初始化 git
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 倉庫..."
    git init
    echo "✓ Git 倉庫初始化完成"
fi

# 檢查是否已經添加 remote
if git remote | grep -q "origin"; then
    echo "📡 Remote 'origin' 已存在"
    current_remote=$(git remote get-url origin)
    echo "當前 remote: $current_remote"

    read -p "是否要更新 remote？(y/n) " update_remote
    if [ "$update_remote" = "y" ]; then
        git remote set-url origin "$repo_url"
        echo "✓ Remote 已更新"
    fi
else
    echo "📡 添加 remote..."
    git remote add origin "$repo_url"
    echo "✓ Remote 添加完成"
fi

# 添加所有文件
echo ""
echo "📄 添加文件..."
git add .
echo "✓ 文件添加完成"

# 提交
echo ""
read -p "請輸入提交訊息 (直接按 Enter 使用預設訊息): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Update resume - $(date '+%Y-%m-%d %H:%M:%S')"
fi

git commit -m "$commit_msg"
echo "✓ 提交完成"

# 推送
echo ""
echo "🚀 推送到 GitHub..."
echo "如果這是第一次推送，可能需要輸入 GitHub 帳號密碼"
echo ""

git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "================================"
    echo "  ✅ 部署成功！"
    echo "================================"
    echo ""
    echo "你的履歷網站將在幾分鐘內發布到："
    echo "👉 https://${username}.github.io"
    echo ""
    echo "提示："
    echo "1. 首次部署可能需要 5-10 分鐘"
    echo "2. 後續更新通常 1-2 分鐘內生效"
    echo "3. 在 GitHub 倉庫的 Settings → Pages 可查看部署狀態"
    echo ""
else
    echo ""
    echo "❌ 推送失敗"
    echo ""
    echo "可能的原因："
    echo "1. GitHub 倉庫 '$repo_name' 不存在"
    echo "   → 請先到 GitHub 創建倉庫"
    echo ""
    echo "2. 沒有推送權限"
    echo "   → 檢查你的 GitHub 帳號權限"
    echo ""
    echo "3. 網路連線問題"
    echo "   → 檢查網路連線"
    echo ""
    echo "詳細錯誤訊息請查看上方輸出"
fi
