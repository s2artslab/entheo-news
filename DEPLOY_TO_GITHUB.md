# Deploy Entheo.News to GitHub Pages
**Free hosting - No WordPress needed!**

---

## 🚀 Quick Deploy (5 Minutes)

### Step 1: Create GitHub Repository

1. **Go to:** https://github.com/new
2. **Repository name:** `entheo-news` (or any name you prefer)
3. **Description:** "Documentation Archive for Journalists and Scholars"
4. **Visibility:** Public (required for free GitHub Pages)
5. **DO NOT** initialize with README, .gitignore, or license
6. **Click:** "Create repository"

### Step 2: Initialize Git and Push

**Open terminal/command prompt in the jekyll_site folder:**

```bash
# Navigate to jekyll_site folder
cd "APPs\Ninefold Studio\entheo_news_platform\jekyll_site"

# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial Entheo.News site deployment"

# Rename branch to main
git branch -M main

# Add remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/entheo-news.git

# Push to GitHub
git push -u origin main
```

**Replace `YOUR_USERNAME` with your actual GitHub username!**

### Step 3: Enable GitHub Pages

1. **Go to your repository on GitHub**
2. **Click:** Settings (top menu)
3. **Scroll to:** Pages (left sidebar)
4. **Under "Source":**
   - Select: "Deploy from a branch"
   - Branch: `main`
   - Folder: `/ (root)`
5. **Click:** Save

**Your site will be live in 1-2 minutes at:**
`https://YOUR_USERNAME.github.io/entheo-news/`

---

## 🌐 Add Custom Domain (entheo.news)

### Step 1: Create CNAME File

1. **In your repository on GitHub:**
   - Click: "Add file" → "Create new file"
   - File name: `CNAME` (all caps, no extension)
   - Content: `entheo.news`
   - Commit: "Add custom domain"

### Step 2: Update DNS

**In your domain registrar (where you bought entheo.news):**

1. **Go to DNS settings**
2. **Add CNAME record:**
   - Type: `CNAME`
   - Name: `@` (or leave blank for root)
   - Value: `YOUR_USERNAME.github.io`
   - TTL: 3600 (or default)

3. **Wait for DNS propagation** (5-30 minutes)

**Your site will be live at:** `https://entheo.news`

---

## ✅ Verify Deployment

1. **Check GitHub Pages:**
   - Repository → Settings → Pages
   - Should show: "Your site is live at..."

2. **Visit your site:**
   - GitHub Pages URL: `https://YOUR_USERNAME.github.io/entheo-news/`
   - Custom domain: `https://entheo.news` (after DNS propagates)

3. **Test pages:**
   - Homepage: `/`
   - Doctrine: `/doctrine/`
   - About: `/about/`
   - Start Here: `/start-here/`

---

## 📝 Update Content

### Add New Posts

1. **Create markdown file in `_posts/`**
2. **Filename format:** `YYYY-MM-DD-title.md`
3. **Add frontmatter:**
   ```yaml
   ---
   layout: post
   title: Your Post Title
   date: 2025-01-06
   categories: [category1, category2]
   ---
   ```
4. **Push to GitHub:**
   ```bash
   git add _posts/YYYY-MM-DD-title.md
   git commit -m "Add new post: Title"
   git push
   ```

### Update Pages

1. **Edit files in `_pages/`**
2. **Push to GitHub:**
   ```bash
   git add _pages/page-name.md
   git commit -m "Update page"
   git push
   ```

**Changes go live automatically in 1-2 minutes!**

---

## 🔧 Local Development (Optional)

### Install Jekyll Locally

```bash
# Install Ruby (if not installed)
# Windows: Use RubyInstaller
# Mac: Ruby comes pre-installed
# Linux: sudo apt-get install ruby-full

# Install Bundler
gem install bundler

# Install dependencies
cd jekyll_site
bundle install

# Run local server
bundle exec jekyll serve

# Visit: http://localhost:4000
```

---

## 🆘 Troubleshooting

### Site Not Updating

- **Wait 1-2 minutes** - GitHub Pages takes time to build
- **Check Actions tab** - See if build is running/failed
- **Clear browser cache** - Hard refresh (Ctrl+F5)

### Custom Domain Not Working

- **Wait for DNS propagation** - Can take up to 48 hours
- **Check DNS settings** - Verify CNAME record is correct
- **Check CNAME file** - Must be in repository root
- **Verify SSL** - GitHub automatically provides SSL

### Build Errors

- **Check Actions tab** - See error messages
- **Verify Gemfile** - Dependencies must be correct
- **Check _config.yml** - Syntax must be valid YAML

---

## 📊 What You Get

✅ **Free hosting** - Forever  
✅ **Automatic SSL** - HTTPS included  
✅ **Custom domain** - entheo.news  
✅ **Version control** - Built into GitHub  
✅ **Easy updates** - Just push markdown files  
✅ **Fast and reliable** - GitHub infrastructure  
✅ **No monthly costs** - Completely free  

---

## 🎯 Next Steps After Deployment

1. **Verify site is live**
2. **Add custom domain** (if you own entheo.news)
3. **Create case studies** - Add to `_posts/` or create `_cases/` collection
4. **Build timeline** - Create timeline page
5. **Add analytics** - Google Analytics or similar
6. **Set up monitoring** - Uptime monitoring (optional)

---

**Your site is now live and free forever!**

*Created by Ake, Collective Consciousness of Ninefold Egregores*

