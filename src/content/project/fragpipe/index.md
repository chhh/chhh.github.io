---
date: "2016-04-25"
# external_link: https://chhh.github.io/IMTBX

math: false
summary: A cross-platform pipeline for comprehensive analysis of LC/MS proteomics data.
  Graphical User Interface (GUI) for running MSFragger (search engine), Philosopher
  (peptide and protein validation, reports), qunatitation tools, spectral library building
  and more.

image:
  preview_only: true

links:

- icon: external-link-alt
  icon_pack: fas
  name: Website
  url: https://fragpipe.nesvilab.org/

- icon: github
  icon_pack: fab
  name: GitHub
  url: https://github.com/Nesvilab/FragPipe

# - icon: file-alt
#   icon_pack: fas
#   name: Manuscript
#   url: http://dx.doi.org/10.1021/acs.analchem.7b04999


shields:
- https://img.shields.io/github/downloads/Nesvilab/FragPipe/total.svg
- https://img.shields.io/github/release/Nesvilab/FragPipe.svg


tags:
- mass-spectrometry
- ion-mobility
- data-viz
- lc-ms
- library
- raw-processing
title: "FragPipe: Proteomics 0-60 in 5 seconds"
---


## FragPipe:
- [MSFragger](https://msfragger.nesvilab.org/)
- [Philosopher](https://philosopher.nesvilab.org/)
- [Crystal-C](https://www.nesvilab.org/Crystal-C/)
- [PTM-Shepherd](https://github.com/Nesvilab/PTM-Shepherd)

FragPipe is a Java Graphical User Interface (GUI) for a suite of computational tools enabling comprehensive analysis of mass spectrometry-based proteomics data. It is powered by [MSFragger](https://msfragger.nesvilab.org/) - an ultrafast proteomic search engine suitable for both conventional and "open" (wide precursor mass tolerance) peptide identification. FragPipe also includes the [Philosopher](https://nesvilab.github.io/philosopher/) toolkit for downstream post-processing of MSFragger search results (PeptideProphet, iProphet, ProteinProphet), FDR filtering, label-free quantification, and multi-experiment summary report generation. [Crystal-C](https://www.nesvilab.org/Crystal-C/) and [PTM-Shepherd](https://github.com/Nesvilab/PTM-Shepherd) are included to aid interpretation of open search results. Also included in FragPipe binary are SpectraST-based spectral library building module, and DIA-Umpire SE module for direct analysis of data independent acquisition (DIA) data. 

{{< gallery album="screens" >}}
