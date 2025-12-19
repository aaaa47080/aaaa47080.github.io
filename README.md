# 個人履歷網站

使用 GitHub Pages 託管的專業履歷網站

## 📋 目錄
- [快速開始](#快速開始)
- [自訂內容](#自訂內容)
- [部署到 GitHub Pages](#部署到-github-pages)
- [進階自訂](#進階自訂)

---

## 🚀 快速開始

### 1. 創建 GitHub 倉庫

1. 登入 [GitHub](https://github.com)
2. 點擊右上角的 `+` → `New repository`
3. 倉庫名稱填寫：`yourusername.github.io`
   - **重要**：將 `yourusername` 替換成你的 GitHub 用戶名
   - 例如：用戶名是 `john-doe`，倉庫名就是 `john-doe.github.io`
4. 選擇 `Public`（公開）
5. 勾選 `Add a README file`
6. 點擊 `Create repository`

### 2. 上傳履歷文件

#### 方法 A：透過網頁上傳（最簡單）

1. 在倉庫頁面點擊 `Add file` → `Upload files`
2. 將以下文件拖曳上傳：
   - `index.html`
   - `style.css`
3. 在下方填寫提交訊息：`Add resume files`
4. 點擊 `Commit changes`

#### 方法 B：使用 Git 命令（推薦）

```bash
# 1. Clone 倉庫到本地
git clone https://github.com/yourusername/yourusername.github.io.git
cd yourusername.github.io

# 2. 複製履歷文件到倉庫目錄
cp /home/danny/AI-agent/my-resume/index.html .
cp /home/danny/AI-agent/my-resume/style.css .

# 3. 提交並推送
git add .
git commit -m "Add resume website"
git push origin main
```

### 3. 啟用 GitHub Pages

1. 在倉庫頁面點擊 `Settings`
2. 左側選單找到 `Pages`
3. 在 `Source` 下拉選單選擇 `main` 分支
4. 點擊 `Save`
5. 等待幾分鐘，網站就會發布到 `https://yourusername.github.io`

---

## ✏️ 自訂內容

編輯 `index.html` 文件，修改以下部分：

### 1. 基本資訊
```html
<!-- 第 15-18 行 -->
<h1>張三</h1>  <!-- 改成你的名字 -->
<h2>全端工程師 / AI 應用開發者</h2>  <!-- 改成你的職稱 -->
```

### 2. 聯絡資訊
```html
<!-- 第 20-23 行 -->
<p><i class="fas fa-envelope"></i> your.email@example.com</p>  <!-- 改成你的 Email -->
<p><i class="fas fa-phone"></i> +886 912-345-678</p>  <!-- 改成你的電話 -->
<p><i class="fas fa-map-marker-alt"></i> 台北市, 台灣</p>  <!-- 改成你的地址 -->
```

### 3. 社交連結
```html
<!-- 第 26-34 行 -->
<a href="https://github.com/yourusername" target="_blank">  <!-- 改成你的 GitHub -->
<a href="https://linkedin.com/in/yourusername" target="_blank">  <!-- 改成你的 LinkedIn -->
```

### 4. 個人照片
```html
<!-- 第 13 行 -->
<img src="https://via.placeholder.com/150" alt="個人照片">
```

**上傳照片方法**：
1. 將照片放到倉庫的 `images` 資料夾（先創建）
2. 修改為：`<img src="images/profile.jpg" alt="個人照片">`

或使用外部連結：
1. 將照片上傳到 [Imgur](https://imgur.com)
2. 複製圖片連結並替換

### 5. 工作經驗、技能、專案
直接編輯對應的 HTML 區塊，替換成你的實際經歷。

---

## 🌐 部署到 GitHub Pages

### 完整部署流程

```bash
# 1. 初始化 Git（如果還沒有）
cd /home/danny/AI-agent/my-resume
git init

# 2. 添加 GitHub 遠端倉庫
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# 3. 添加所有文件
git add .

# 4. 提交
git commit -m "Initial commit: Add resume website"

# 5. 推送到 GitHub
git push -u origin main
```

### 更新網站內容

每次修改後：

```bash
# 1. 查看修改
git status

# 2. 添加修改
git add .

# 3. 提交
git commit -m "Update resume content"

# 4. 推送
git push origin main
```

等待 1-2 分鐘，網站會自動更新。

---

## 🎨 進階自訂

### 修改顏色主題

編輯 `style.css` 文件的第 10-18 行：

```css
:root {
    --primary-color: #2563eb;      /* 主色調（藍色）*/
    --secondary-color: #1e40af;    /* 次要色（深藍色）*/
    --text-color: #1f2937;         /* 文字顏色 */
    --text-light: #6b7280;         /* 淺色文字 */
    --bg-color: #f9fafb;           /* 背景色 */
}
```

**常用配色方案**：

#### 專業藍（預設）
```css
--primary-color: #2563eb;
--secondary-color: #1e40af;
```

#### 科技綠
```css
--primary-color: #059669;
--secondary-color: #047857;
```

#### 創意紫
```css
--primary-color: #7c3aed;
--secondary-color: #6d28d9;
```

#### 商務黑
```css
--primary-color: #1f2937;
--secondary-color: #111827;
```

### 添加更多區塊

在 `index.html` 中，你可以添加：
- 獲獎紀錄
- 出版作品
- 演講經驗
- 志工服務

複製現有區塊的 HTML 結構即可。

### 添加 Google Analytics（追蹤訪客）

在 `</head>` 標籤前添加：

```html
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

替換 `GA_MEASUREMENT_ID` 為你的 Google Analytics ID。

---

## 📱 功能特色

✅ **響應式設計** - 自動適應手機、平板、電腦
✅ **現代化風格** - 專業美觀的設計
✅ **列印友善** - 可直接列印成 PDF
✅ **平滑動畫** - 滾動時的淡入效果
✅ **SEO 優化** - 容易被搜尋引擎找到
✅ **快速載入** - 純 HTML/CSS，無需框架

---

## 🔧 常見問題

### Q1: 網站多久會更新？
推送到 GitHub 後，通常 1-2 分鐘內會更新。首次部署可能需要 5-10 分鐘。

### Q2: 可以使用自訂網域嗎？
可以！在倉庫的 `Settings` → `Pages` → `Custom domain` 設定。

### Q3: 如何將履歷下載成 PDF？
在瀏覽器中按 `Ctrl+P`（Windows）或 `Cmd+P`（Mac），選擇「另存為 PDF」。

### Q4: 可以設為私密嗎？
GitHub Pages 免費版必須是公開倉庫。如需私密，考慮使用 GitHub Pro 或其他託管服務。

### Q5: 找不到我的網站？
- 確認倉庫名稱是 `yourusername.github.io`
- 確認已在 Settings → Pages 啟用
- 確認 `index.html` 在根目錄
- 清除瀏覽器快取後重試

---

## 📚 參考資源

- [GitHub Pages 官方文檔](https://docs.github.com/en/pages)
- [Font Awesome 圖標](https://fontawesome.com/icons)
- [Google Fonts](https://fonts.google.com)
- [HTML 顏色代碼](https://htmlcolorcodes.com)

---

## 📄 授權

此模板採用 MIT 授權，可自由使用和修改。

---

## 💡 提示

1. **定期更新**：每 3-6 個月更新一次履歷
2. **保持簡潔**：只列出最相關的經歷
3. **量化成果**：用數字說明你的貢獻
4. **檢查錯字**：上線前仔細校對
5. **測試連結**：確保所有連結都能正常打開

---

祝你求職順利！🎉
