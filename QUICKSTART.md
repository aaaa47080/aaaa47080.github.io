# 🚀 快速開始 - 5 分鐘部署你的履歷網站

## 步驟 1: 創建 GitHub 倉庫（2 分鐘）

1. 打開 [GitHub](https://github.com) 並登入
2. 點擊右上角 `+` → `New repository`
3. **倉庫名稱**填寫：`你的用戶名.github.io`
   - 例如：用戶名是 `john`，就填 `john.github.io`
   - ⚠️ 必須完全一致，否則無法自動部署
4. 選擇 `Public`（公開）
5. 點擊 `Create repository`

## 步驟 2: 自訂履歷內容（2 分鐘）

編輯 `index.html`，修改以下內容：

### 必改項目
```html
<!-- 姓名 -->
<h1>張三</h1>  ← 改成你的名字

<!-- 職稱 -->
<h2>全端工程師 / AI 應用開發者</h2>  ← 改成你的職稱

<!-- Email -->
<p><i class="fas fa-envelope"></i> your.email@example.com</p>

<!-- 電話 -->
<p><i class="fas fa-phone"></i> +886 912-345-678</p>

<!-- GitHub -->
<a href="https://github.com/yourusername" target="_blank">

<!-- LinkedIn -->
<a href="https://linkedin.com/in/yourusername" target="_blank">
```

### 選改項目
- 工作經驗
- 專案作品
- 技能標籤
- 學歷
- 證照

## 步驟 3: 部署到 GitHub（1 分鐘）

### 方法 A: 使用自動部署腳本（推薦）

```bash
cd /home/danny/AI-agent/my-resume
./deploy.sh
```

按照提示操作即可！

### 方法 B: 手動部署

```bash
cd /home/danny/AI-agent/my-resume

# 初始化 Git
git init

# 添加遠端倉庫（替換 yourusername）
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# 提交並推送
git add .
git commit -m "Initial commit: Add resume"
git push -u origin main
```

## 步驟 4: 啟用 GitHub Pages

1. 到你的倉庫頁面
2. 點擊 `Settings`（設定）
3. 左側選單找到 `Pages`
4. 在 `Source` 下選擇 `main` 分支
5. 點擊 `Save`

## 步驟 5: 查看你的網站

等待 1-5 分鐘，訪問：
```
https://你的用戶名.github.io
```

例如：`https://john.github.io`

---

## ✅ 完成！

你的履歷網站已經上線了！

### 下一步

- 📸 上傳個人照片
- 🎨 修改顏色主題
- 📝 完善工作經驗
- 🔗 添加專案連結
- 📱 在手機上檢查排版

### 更新網站

每次修改後：

```bash
cd /home/danny/AI-agent/my-resume
./deploy.sh
```

或手動：

```bash
git add .
git commit -m "Update resume"
git push
```

---

## 💡 專業提示

### 1. 使用真實照片
將照片放到 `images/` 資料夾，修改為：
```html
<img src="images/profile.jpg" alt="個人照片">
```

### 2. 量化你的成就
❌ 「開發了一個系統」
✅ 「開發醫療諮詢系統，提升回答準確度 40%，服務 1000+ 用戶」

### 3. 突出技術關鍵字
確保你的履歷包含：
- 程式語言
- 框架 / 工具
- 專案成果
- 可量化的數據

### 4. 保持更新
每 3-6 個月更新一次履歷，加入新技能和專案。

### 5. 檢查清單
- [ ] 聯絡資訊正確
- [ ] 所有連結可點擊
- [ ] 沒有錯字
- [ ] 手機排版正常
- [ ] 可以列印成 PDF

---

## ❓ 遇到問題？

### 網站沒有顯示
1. 確認倉庫名稱是 `yourusername.github.io`
2. 確認 Settings → Pages 已啟用
3. 等待 5-10 分鐘（首次部署較久）
4. 清除瀏覽器快取

### 推送失敗
1. 確認倉庫已經創建
2. 確認 remote URL 正確
3. 可能需要設定 GitHub Token（詳見 README.md）

### 排版跑掉
1. 確認 `style.css` 文件存在
2. 檢查瀏覽器控制台是否有錯誤
3. 嘗試硬性重新整理（Ctrl+F5）

---

## 📚 更多資源

詳細說明請查看 `README.md`

祝你求職順利！🎉
