# 📋 Constitutional Awareness Survey Platform
### Complete Beginner's Guide — No Coding Knowledge Required

---

## 📦 What's Inside This Folder?

```
constitutional-survey/
│
├── 📄 index.html           ← The SURVEY (students use this)
├── 📄 admin.html           ← Admin LOGIN page
├── 📄 dashboard.html       ← ANALYTICS dashboard
│
├── 📁 server/
│   └── server.js           ← The "brain" that stores data
│
├── 📄 package.json         ← List of required tools
│
├── 🖱️ START_SURVEY.bat     ← Windows: Double-click to start!
└── 🖱️ START_SURVEY.sh      ← Mac/Linux: Click to start!
```

---

## 🌟 TWO WAYS TO USE THIS WEBSITE

### WAY 1: Without Installing Anything (Simplest — works offline)
Good for: Testing on your own laptop, showing to your supervisor

Just open the `index.html` file directly in your browser!
- Double-click `index.html` → the survey opens
- Students can fill it in
- Answers are saved in the browser (not a database)
- Go to `dashboard.html` to see the results

> ⚠️ **Limitation:** Data only shows on the computer where it was filled. Not suitable for sharing with multiple people over the internet.

---

### WAY 2: With Server (Recommended — for sharing online)
Good for: Sharing the link with students, collecting from many people

Follow the steps below ↓

---

## 🖥️ HOW TO SET UP THE SERVER (Step-by-Step)

### STEP 1 — Install Node.js (Only once, ever)

Node.js is the software that runs the website's server.

1. Open your internet browser (Chrome, Edge, Firefox)
2. Go to this website: **https://nodejs.org**
3. You will see a big green button that says **"LTS"** — click it
4. A file will download (e.g., `node-v20.x.x-x64.msi` on Windows)
5. Open that downloaded file
6. Click **"Next"** → **"Next"** → **"Next"** → **"Install"** → **"Finish"**
7. Done! Node.js is installed.

**How to check it worked:**
- Press `Windows key + R`, type `cmd`, press Enter
- Type `node --version` and press Enter
- You should see something like `v20.11.0` ✅

---

### STEP 2 — Start the Survey Website

#### On Windows:
1. Open the **constitutional-survey** folder
2. Find the file called **`START_SURVEY.bat`**
3. **Double-click it**
4. A black window will open — this is normal, don't close it
5. Your browser will automatically open with the survey!

#### On Mac:
1. Open Terminal (search "Terminal" in Spotlight)
2. Drag the **constitutional-survey** folder into the Terminal window
3. Type `cd ` then drag the folder → press Enter
4. Type `bash START_SURVEY.sh` → press Enter

---

### STEP 3 — Share with Students

After starting the server, the survey runs at:
```
http://localhost:3000
```

**To share with students on the SAME WiFi network:**
1. Find your computer's IP address:
   - Windows: Open `cmd` → type `ipconfig` → look for `IPv4 Address` (e.g., `192.168.1.105`)
   - Mac: Go to System Preferences → Network → look for IP address
2. Share this link with students: `http://192.168.1.105:3000`
3. Students open this link on their phones/laptops (must be on same WiFi)

**To share over the INTERNET (anywhere in the world):**
See the "Deploy Online" section below ↓

---

## 🔐 ADMIN DASHBOARD

To see all survey results and charts:

1. Go to: `http://localhost:3000/admin.html`
2. Username: **admin**
3. Password: **admin123**
4. You'll see the full analytics dashboard

**What you can do in the dashboard:**
- ✅ See total number of responses
- ✅ View charts for every question
- ✅ Filter by Gender, Age, or Department
- ✅ See which constitutional article is least known
- ✅ Download all data as Excel/CSV file (click "Export CSV")
- ✅ Auto-refreshes every 30 seconds

---

## 📊 EXPORTING DATA FOR ANALYSIS

1. Open the Admin Dashboard
2. Apply any filters you want (or leave all blank for everything)
3. Click the green **"Export CSV"** button (top right)
4. A file called `survey_responses.csv` will download
5. Open it in **Microsoft Excel** or **Google Sheets**

You can then use this data in SPSS, R, or any statistics software.

---

## 🌍 DEPLOYING ONLINE (Share Globally)

To make the survey accessible from anywhere on the internet, use **Railway** — it's free and takes 10 minutes.

### Deploy on Railway (Free):

1. Create a free account at: **https://railway.app**
2. Create a free account at: **https://github.com** (if you don't have one)
3. Upload this project folder to GitHub:
   - Go to github.com → Click **"New repository"** → Name it `survey`
   - Upload all files from this folder
4. On Railway: Click **"New Project"** → **"Deploy from GitHub"**
5. Select your `survey` repository
6. Railway will automatically detect Node.js and deploy
7. You'll get a link like: `https://survey-production-xxxx.up.railway.app`
8. Share this link with your students!

---

## ❓ COMMON PROBLEMS & SOLUTIONS

### "The server doesn't start"
- Make sure Node.js is installed (see Step 1)
- Make sure you're running `START_SURVEY.bat` from inside the project folder
- Try running as Administrator (right-click → Run as administrator)

### "I can't access it from my phone"
- Make sure your phone and computer are on the same WiFi
- Use your computer's IP address, not `localhost`
- Check Windows Firewall: allow Node.js through the firewall

### "No data showing in dashboard"
- If you opened `index.html` directly (without server), data is in browser storage
- The dashboard reads from the same browser, so open both in the same browser
- With the server running, data is stored in `server/survey.db` file

### "I forgot the admin password"
- Default is always: **admin** / **admin123**
- If you changed it, delete the file `server/survey.db` and restart the server

### "The black window closed by itself"
- This means there was an error
- Make sure you have internet connection for the first run (to download packages)
- Try running as Administrator

---

## 📱 SURVEY FEATURES

The survey collects:
- **Age group** (6 options)
- **Gender** (4 options including "Prefer not to say")
- **Department/Faculty** (free text)

Then asks **12 questions** across 4 constitutional articles:
- **Art. 10-A** — Right to Fair Trial (Q1, Q2, Q3)
- **Art. 19** — Freedom of Speech (Q4, Q5, Q6)
- **Art. 22** — Religious Protection in Education (Q7, Q8)
- **Art. 25** — Equality of Citizens (Q9, Q10, Q11)
- **Open-ended** — Final reflective question (Q12)

---

## 📞 QUICK REFERENCE

| What | Where |
|------|-------|
| Student Survey | http://localhost:3000 |
| Admin Login | http://localhost:3000/admin.html |
| Analytics Dashboard | http://localhost:3000/dashboard.html |
| Admin Username | `admin` |
| Admin Password | `admin123` |
| Data file (backup) | `server/survey.db` |

---

*Constitutional Awareness Survey · 1973 Constitution of Pakistan · Academic Research*
