# Entheo.News Jekyll Site

## Local Development

1. Install Jekyll:
   ```bash
   gem install bundler
   bundle install
   ```

2. Run locally:
   ```bash
   bundle exec jekyll serve
   ```

3. Visit: http://localhost:4000

## Deploy to GitHub Pages

1. Create GitHub repository
2. Push this folder to repository
3. Go to Settings → Pages
4. Select source branch (usually `main`)
5. Site will be live at: `username.github.io/repository-name`

## Custom Domain

1. Add `CNAME` file with your domain: `entheo.news`
2. Update DNS:
   - Type: CNAME
   - Name: @
   - Value: username.github.io
3. Wait for DNS propagation

## Content

- Pages: `_pages/`
- Posts: `_posts/`
- Cases: `_cases/` (if using collections)

All markdown files are ready to use!
