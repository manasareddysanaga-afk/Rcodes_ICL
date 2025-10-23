# R Scripts for Shape and Size Analysis of the Olecranon Fossa of the Humerus

This repository contains R scripts developed for the statistical analysis and visualization of the olecranon fossa of the humerus, focusing on shape and size variation. The scripts support forensic anthropology research and include tools for dimensionality reduction, normality testing, and group comparisons.

> **Note:** The data used in this project is confidential and not included in the repository. Users may adapt the code to their own datasets.

## Contents

- `olecranon_fossa_analysis.R` â Main script for analyzing shape and size variation of the olecranon fossa
- `pca_analysis.R` â Performs principal component analysis (PCA) to explore shape variation
- `bar_plot_traits.R` â Generates bar plots for visualizing metric trait distributions
- `t_test.R` â Conducts independent and paired t-tests for group comparisons
- `shapiro_wilk_test.R` â Tests for normality using the Shapiro-Wilk method

## Requirements

Make sure you have the following R packages installed:
```R
install.packages(c("ggplot2", "dplyr", "stats", "factoextra"))


## How to Run

To execute the scripts, open them in RStudio and run line-by-line or use the `source()` function to run the entire file. For example:

```R
source("pca_analysis.R")
source("bar_plot_traits.R")
source("t_test.R")
source("shapiro_wilk_test.R")


---

Let me know if you'd like to include a sample dataset structure or simulated example to help others test the code. I can help you generate that too.
