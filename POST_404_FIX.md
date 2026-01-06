# Fixing Post 404 Errors

## Issues Fixed

### 1. Permalink Configuration
- Added explicit permalink format for posts: `/:year/:month/:day/:title/`
- This ensures posts have consistent, predictable URLs

### 2. Relative URL Filter
- Updated `index.html` to use `{{ post.url | relative_url }}`
- This ensures post links work correctly with baseurl

### 3. Date Format
- Updated post dates to include time: `2026-01-06 00:00:00 -0000`
- Jekyll needs full datetime for proper processing

## Post URLs

After these fixes, posts should be accessible at:

- **The Commercial Framing Problem:**
  https://s2artslab.github.io/entheo-news/2026/01/06/the-commercial-framing-problem/

- **A Quiet Legal Anomaly:**
  https://s2artslab.github.io/entheo-news/2026/01/06/a-quiet-legal-anomaly/

- **The Governance Gap:**
  https://s2artslab.github.io/entheo-news/2026/01/06/the-governance-gap/

## Next Steps

1. **Wait 1-2 minutes** for GitHub Pages to rebuild
2. **Check Actions tab** - Verify build succeeded:
   https://github.com/s2artslab/entheo-news/actions
3. **Clear browser cache** - Hard refresh (Ctrl+F5)
4. **Test post links** - Should work now

## If Still Getting 404s

1. **Check GitHub Pages build logs:**
   - Go to Actions tab
   - Click latest workflow run
   - Check for errors

2. **Verify post files:**
   - Files must be in `_posts/` folder
   - Filename format: `YYYY-MM-DD-title.md`
   - Frontmatter must have `layout: post`

3. **Check permalink format:**
   - Posts use: `/2026/01/06/title/`
   - Pages use: `/page-name/`

4. **Force rebuild:**
   - Make a small change and push
   - Or go to Settings → Pages → Save

