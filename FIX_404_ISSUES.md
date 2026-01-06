# Fixing 404 Errors on GitHub Pages

## Issue
Links were returning 404 errors because:
1. Baseurl wasn't configured correctly for GitHub Pages
2. Links weren't using relative_url filter
3. GitHub Pages needs proper Jekyll configuration

## Fixes Applied

### 1. Updated _config.yml
- Set `baseurl: "/entheo-news"` (required for GitHub Pages with repo name)
- Set `url: "https://s2artslab.github.io"`
- Added proper collections configuration
- Added defaults for pages and posts

### 2. Updated index.html
- Changed links to use `relative_url` filter
- Example: `{{ '/doctrine/' | relative_url }}`

### 3. Removed .nojekyll
- Ensured Jekyll processing is enabled

## After Push

1. **Wait 1-2 minutes** for GitHub Pages to rebuild
2. **Check Actions tab** - Verify build succeeded
3. **Clear browser cache** - Hard refresh (Ctrl+F5)
4. **Test links** - Should work now

## If Still Getting 404s

1. **Check GitHub Pages build:**
   - Go to: https://github.com/s2artslab/entheo-news/actions
   - Verify latest build succeeded

2. **Check baseurl:**
   - Make sure `baseurl: "/entheo-news"` in _config.yml
   - All links should use `relative_url` filter

3. **Verify permalinks:**
   - Pages should have `permalink: /page-name/`
   - Posts use date-based URLs automatically

4. **Force rebuild:**
   - Make a small change and push
   - Or go to Settings → Pages → Save (triggers rebuild)

## Correct URLs

- Homepage: https://s2artslab.github.io/entheo-news/
- Doctrine: https://s2artslab.github.io/entheo-news/doctrine/
- About: https://s2artslab.github.io/entheo-news/about/
- Start Here: https://s2artslab.github.io/entheo-news/start-here/

