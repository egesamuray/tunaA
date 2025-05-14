# Efficient and scalable posterior surrogate for seismic inversion via wavelet score-based generative models

This repository contains the source code and manuscript for our IMAGE 2025 submission on wavelet score-based generative models for seismic inversion.

## Abstract

Seismic inversion poses significant computational challenges due to its high dimensionality and non-unique solutions. We propose a novel method integrating the Wavelet Score-Based Generative Model (WSGM) with Simulation-Based Inference (SBI) to enable efficient posterior sampling for full-waveform inference. Our approach reduces memory requirements (≈50%) and significantly decreases sampling time (≈73%) compared to standard score-based diffusion models, while preserving accuracy. Furthermore, WSGM naturally supports the generation of velocity models at multiple resolutions, leveraging its hierarchical structure. Experimental results on pairs of synthetic seismic images and velocity models demonstrate that our method enables posterior sampling for large-scale 2D geophysical problems and facilitates the assessment of uncertainties relevant to subsurface characterization.

## Building the Paper

This paper is built using [Quarto](https://quarto.org/). To build the paper:

1. Install Quarto: https://quarto.org/docs/get-started/
2. Clone this repository
3. Run `quarto render` in the repository root

This will generate both HTML and PDF versions of the paper.

## Repository Structure

- `abstract.qmd`: Main paper content in Quarto markdown format
- `abstract.bib`: Bibliography entries
- `_quarto.yml`: Quarto project configuration
- `figs/`: Directory containing figures
- `styles.css`: CSS styling for the HTML version
- `IMAGEAbstractTemplate.latex`: LaTeX template for the PDF version

## Authors

- Ege Cirakman (Istanbul Technical University)
- Huseyin Tuna Erdinc (Georgia Institute of Technology)
- Felix J. Herrmann (Georgia Institute of Technology)
