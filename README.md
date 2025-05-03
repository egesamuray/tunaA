markdown# Efficient and scalable posterior surrogate for seismic inversion via wavelet score-based generative models

This repository contains the code and documentation for our paper on wavelet score-based generative models for seismic inversion.

## Abstract

Seismic inversion poses significant computational challenges due to its high dimensionality and non-unique solutions. We propose a novel method integrating the Wavelet Score-Based Generative Model (WSGM) with Simulation-Based Inference (SBI) to enable efficient posterior sampling for full-waveform inference.

## Authors

- Ege Cirakman (Istanbul Technical University)
- Huseyin Tuna Erdinc (Georgia Institute of Technology)
- Felix J. Herrmann (Georgia Institute of Technology)

## Website

The paper and accompanying materials are available at: [https://slimgroup.github.io/IMAGE2025/](https://slimgroup.github.io/IMAGE2025/)

## Citation

```bibtex
@misc{cirakman2025efficient,
  title={Efficient and scalable posterior surrogate for seismic inversion via wavelet score-based generative models},
  author={Cirakman, Ege and Erdinc, Huseyin Tuna and Herrmann, Felix J.},
  year={2025},
  institution={IMAGE2025}
}
License
This project is licensed under the MIT License - see the LICENSE file for details.

## .gitignore (recommended)
Quarto output
_site/
_freeze/
*.html
*_files/
.Rproj.user
.Rhistory
.RData
.Ruserdata
Mac files
.DS_Store
Python
pycache/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
ENV/
LaTeX auxiliary files
*.aux
*.log
*.out
*.synctex.gz
*.fdb_latexmk
*.fls
Editor files
.vscode/
.idea/

Now the full set includes:
1. `abstract.qmd` - Main paper content
2. `styles.css` - Custom styling
3. `index.qmd` - Homepage
4. `_quarto.yml` - Quarto configuration
5. `LICENSE` - MIT license
6. `README.md` - Repository documentation
7. `.gitignore` - Git ignore file

These files should create a complete Quarto website that properly displays your paper with all figures and formatting intact.
