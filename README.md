# FUCCI Track and Spot Analysis 

This repository contains Jupyter notebooks for analyzing and visualizing tracking, spot detection, and nuclei segmentation data from the Kurppa dataset.

---
## Deep learning pipeline

### Nuclei_detection_pipeline.ipynb  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/FUCCI/blob/main/DL_pipeline/Nuclei_detection_pipeline.ipynb)  

Implements a deep learning-based pipeline for nuclei detection:
- Loads raw microscopy images
- Applies pretrained segmentation model
- Outputs masks and postprocessed features
- Can be integrated with tracking and spot analysis workflows

---

## Analysis Notebooks

### 1_Tracks_analysis+plotting.ipynb 
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/FUCCI/blob/main/FUCCI_analysis/1_Tracks_analysis_plotting.ipynb)  

Performs analysis of track data, including:
- Filtering and preprocessing of trajectories
- Calculating metrics like speed, displacement, and direction
- Summary statistics and initial visualizations

---

### 2_Spots_analysis.ipynb  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/FUCCI/blob/main/FUCCI_analysis/2_Spots_analysis.ipynb)  

Analyzes spot detection data:
- Aggregates spot-level features
- Calculates statistical descriptors
- Compares spot distributions across experimental conditions

---

### 3_Spots_plotting.ipynb  
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/FUCCI/blob/main/FUCCI_analysis/3_Spots_plotting.ipynb)  

Generates visualizations for spot analysis results:
- Box plots, histograms, and scatter plots
- Supports grouped comparisons
- Prepares publication-ready figures

---

## How to Use

To run the notebooks in [Google Colab](https://colab.research.google.com/), click on the **"Open in Colab"** badges above.  
Make sure to upload your dataset or mount your Google Drive as needed.
---
