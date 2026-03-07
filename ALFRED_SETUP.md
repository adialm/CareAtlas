# Alfred Setup Documentation

## Complete System Configuration

### Accounts & Credentials

| Service | Account | Status | Notes |
|---------|---------|--------|-------|
| **GitHub** | adialm | ✅ Active | Token: ghp_zRDJyWVs... |
| **Gmail** | adimini.open@gmail.com | ✅ Created | Password: Alfred0604 |
| **Apple ID (Mac mini)** | adimini.open@gmail.com | ✅ Created | For iCloud sync |
| **Telegram Bot** | @AlfredCareAtlasBot | ✅ Active | Token configured |
| **Tavily** | Student access | ✅ 4k credits/mo | API working via curl |
| **Cursor** | Your account | ✅ Pro subscription | Can open files directly |

### File Access

**Primary (GitHub):**
- Repo: https://github.com/adialm/CareAtlas
- Local: `/Users/adi/.openclaw/workspace/careatlas/`
- Sync: `git pull` / `git push`

**Secondary (iCloud - pending restart):**
- Folder: `CareAtlas-Shared` (from MacBook Pro)
- Symlink: `literature-icloud/` → iCloud Drive
- Use: Quick drag-and-drop, notes, screenshots

### Tools Available

| Tool | How I Use It | Status |
|------|--------------|--------|
| **Cursor** | `/Applications/Cursor.app/Contents/MacOS/Cursor <file>` | ✅ Working |
| **Tavily Search** | Direct API via curl | ✅ Working |
| **Git** | Standard git commands | ✅ Working |
| **Telegram** | `message` tool | ✅ Working |
| **ACP Agents** | `sessions_spawn` with runtime=acp | ⚠️ Needs auth setup |

### Daily Workflow

1. **Morning sync:**
   ```bash
   cd /Users/adi/.openclaw/workspace/careatlas
   git pull
   ```

2. **Working session:**
   - I read files, analyze, plan
   - You code in Cursor (I can open files for you)
   - We discuss, iterate

3. **End of day:**
   ```bash
   git add -A
   git commit -m "Description of work"
   git push
   ```
   - I write DAILY_LOG.md
   - You review on MacBook Pro via GitHub or iCloud

### Project Structure

```
careatlas/
├── README.md                      # Project overview
├── TECHNICAL_ANALYSIS.md          # Gap analysis & path forward
├── WEEK1_ROADMAP.md              # Literature review plan
├── literature/
│   ├── DAILY_LOG.md              # Daily progress tracking
│   ├── studies_database.json     # Structured evidence (11 studies)
│   ├── tavily_search.sh          # Search helper script
│   └── studies/                  # Full-text PDFs (to add)
├── frontend/                      # React app (existing)
├── backend/                       # FastAPI (to implement)
└── data-processing/              # Data pipeline (existing)
```

### API Keys & Environment

**Set in ~/.zshrc:**
```bash
export GITHUB_TOKEN=<your_github_token>
export TAVILY_API_KEY=<your_tavily_key>
```
*(Keys stored separately in environment, not in repo)*

**OpenClaw Config:**
- File: `~/.openclaw/openclaw.json`
- Telegram: Configured for user 490894727
- ACPX: Plugin enabled, CLI installed

### What Works Right Now

✅ Literature search via Tavily API
✅ Code editing via file tools
✅ Cursor file opening
✅ Git sync to GitHub
✅ Telegram messaging
✅ Daily logging

### What's Pending

⏳ iCloud folder sync (waiting for restart)
⏳ ACP agent authentication (optional)
⏳ Full Cursor agent spawning (optional)

### Contact

- **Telegram:** @AlfredCareAtlasBot
- **GitHub:** https://github.com/adialm/CareAtlas
- **Workspace:** `/Users/adi/.openclaw/workspace/careatlas/`

---

*Last updated: March 6, 2026*
*Motto: Find a way.*
