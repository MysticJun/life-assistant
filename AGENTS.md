# AGENTS.md

This is a new/empty project. No code, config, or tooling has been set up yet.

## Commands

- `結案` — 結束本次對話。收到此指令後，請將本次對話的完整摘要寫回此檔案（追加在下方），以便未來 session 快速接續。

## Todo System

用 `todowrite` 工具管理待辦。每次「結案」時會把未完成的待辦摘要寫入此檔。下次對話說「呆呆幫我」或「小幫手」即可恢復待辦上下文。

### 待辦（最後更新：2026-05-18）

- 5/20 (三) 18:30 — 帶老婆和女兒吃海底撈
- 5/23 (六) 18:00 — 格致中學303同學會 @ 田園海鮮餐廳（臺北市中山區八德路二段174巷5號）
- 5/24 (日) 13:10 — 家庭聚餐 @ 品冠客家小館（台北市松山區南京東路五段23巷9弄4號）
- 6/6 (六) 17:00 — 研究所大聚餐 @ 星享道 2F 愛鑽廳（臺中市西屯區福星北路18號）

## Notes

- 優先使用繁體中文溝通。
- 待專案建立後，請更新此檔案加入：建置指令、測試指令、lint/typecheck 指令、架構說明、目錄結構、套件邊界等資訊。

## Installed Skills

- `ke-dai-dev`（柯呆呆開發小幫手）— `.opencode/skills/ke-dai-dev/SKILL.md`，說「呆呆幫我」或「小幫手」觸發

---

## 對話摘要 — 2026-05-17

### 本次完成事項

1. **建立 AGENTS.md** — 初始版本含結案指令、待辦系統框架、語言偏好
2. **安裝 ke-dai-dev skill** — 從 `ke-dai-dev.zip` 解壓安裝至 `.opencode/skills/ke-dai-dev/`，含 SKILL.md、5 個範本檔（plan/api/guide/rca/context7）、1 個技術棧參考
3. **建立待辦系統流程** — 確定用 todowrite 管理、結案時寫入 AGENTS.md、下次說「呆呆幫我」恢復

### 使用者偏好確認

- 優先使用繁體中文
- 角色：小秘書，代管約會/事件待辦
- 待辦需記錄：日期、時間、事件名稱、地點地址

## Git 自動備份系統

- **GitHub**: https://github.com/MysticJun/life-assistant
- **腳本**: `auto-backup.ps1` — 自動 add → commit → push
- **排程**: Windows 工作排程器「生活小秘書自動備份」，每 6 小時執行一次
- **Log**: `auto-backup.log`（已加入 .gitignore）

---

## Git 自動備份系統

- **GitHub**: https://github.com/MysticJun/life-assistant
- **腳本**: `auto-backup.ps1` — 自動 add → commit → push
- **排程**: Windows 工作排程器「生活小秘書自動備份」，每 6 小時執行一次
- **Log**: `auto-backup.log`（已加入 .gitignore）

### 進行中待辦（3 筆）

見上方待辦列表。

---

## 對話摘要 — 2026-05-18（第 2 次）

### 本次完成事項

1. **安裝 Git 2.54.0** — 透過 winget 安裝，設定 PATH
2. **安裝 GitHub CLI (gh) 2.92.0** — 透過 winget 安裝
3. **設定 GitHub 認證** — 建立 classic PAT 登入，並存入 Windows Credential Manager
4. **建立 GitHub 倉庫** — `MysticJun/life-assistant`（public）
5. **初始化 Git 倉庫** — 設定 user.name/email，建立初始 commit
6. **建立 `.gitignore`** — 排除 `.opencode/`、`*.log`、`.DS_Store`、`Thumbs.db`
7. **建立自動備份腳本** — `auto-backup.ps1`，自動 add→commit→push 並寫 log
8. **設定 Windows 排程** — 「生活小秘書自動備份」每 6 小時執行一次（00:00/06:00/12:00/18:00）
9. **更新 AGENTS.md** — 加入 Git 備份系統說明及本次摘要

### 非技術聊天空檔（未變動專案）

- 地獄廚房（Hell's Kitchen）收看管道諮詢（Netflix/MyVideo/Hulu/Fox 等）
- 廁所沒插座安裝免治馬桶方案討論（免插電款、拉明線、請水電）
- 浴室裝修（鏡子、層板、輔助扶手）適合找水電一次處理
- 王者榮耀元流之子坦克對抗路玩法建議
- 心動小鎮天氣機制（朵朵出現條件、櫻花雨為純氛圍天氣）

### 進行中待辦（3 筆）

見上方待辦列表，未異動。
