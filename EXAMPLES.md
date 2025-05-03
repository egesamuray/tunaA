# Example Usage

This document provides examples of how to use and modify the Quarto document in this repository.

## Basic Rendering

### Render to HTML

```bash
quarto render abstract.qmd --to html
```

### Render to PDF

```bash
quarto render abstract.qmd --to pdf
```

### Render to Multiple Formats

```bash
quarto render abstract.qmd
```

## Modifying Content

### Updating the Abstract

Edit the YAML frontmatter in `abstract.qmd`:

```yaml
---
title: "Your Title"
author:
  - name: Author Name
    affiliations:
      name: Institution Name
# ... other metadata
abstract: "Your abstract text here"
---
```

### Adding Figures

1. Add your figure files to the `figs/` directory
2. Reference them in your Quarto document:

```markdown
::: {#fig-example}
![](./figs/your-figure.png){width="90%"}

Caption for your figure
:::
```

### Adding Citations

1. Add your references to `abstract.bib` in BibTeX format
2. Cite them in your document using `@citation-key`

Example:
```
As shown by @author2023paper, the method improves results.
```

## Customizing Appearance

### Modifying CSS

Edit `styles.css` to change the appearance of the HTML output:

```css
body {
  font-family: 'Your Preferred Font', sans-serif;
}

h1, h2, h3 {
  color: #3366cc;
}
```

### Changing Quarto Configuration

Edit `_quarto.yml` to modify website structure, navigation, and output formats:

```yaml
project:
  type: website
website:
  title: "Your Website Title"
  navbar:
    left:
      - href: index.qmd
        text: Home
    right:
      - icon: github
        href: https://github.com/yourusername/yourrepo
```

## Working with Equations

### Adding Inline Equations

Use single dollar signs for inline equations:

```markdown
The formula $E = mc^2$ demonstrates the relationship.
```

### Adding Display Equations

Use double dollar signs for display equations:

```markdown
$$
\nabla_{\mathbf{x}} \log p(\mathbf{x} \mid \mathbf{y})
$$
```

### Adding Numbered Equations

Use the equation environment:

```markdown
\begin{equation}
\widehat{\boldsymbol{\theta}}_{\text{WSGM}} = \argmin_{\boldsymbol{\theta}}\mathbb{E}_{\overline{\mathbf{y}}_j,\mathbf{x}_j,\overline{\mathbf{x}}_j,\mathbf{n}} \left\| s_{\boldsymbol{\theta}}(\overline{\mathbf{x}}_j + \mathbf{n}, \mathbf{x}_j, \overline{\mathbf{y}}_j, \sigma(t)) - \overline{\mathbf{x}}_j \right\|_2^2
\end{equation}
```

## Publishing Your Website

### GitHub Pages

1. Push your repository to GitHub
2. Enable GitHub Pages in your repository settings
3. Set the source to the `gh-pages` branch and the folder to `/`
4. Add GitHub Actions workflow for automatic deployment:

Create `.github/workflows/publish.yml`:

```yaml
name: Publish Quarto Website

on:
  push:
    branches: main

jobs:
  build-deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Check out repository
        uses: actions/checkout@v3
      
      - name: Set up Quarto
        uses: quarto-dev/quarto-actions/setup@v2
        
      - name: Install TinyTeX
        uses: quarto-dev/quarto-actions/setup-tinytex@v2
      
      - name: Render and Publish
        uses: quarto-dev/quarto-actions/publish@v2
        with:
          target: gh-pages
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

### Netlify or Vercel

1. Connect your GitHub repository to Netlify or Vercel
2. Set the build command to `quarto render`
3. Set the publish directory to `_site`
