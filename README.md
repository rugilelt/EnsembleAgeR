# EnsembleAgeR

The goal of EnsembleAgeR is to allow users to easily calculate chronological age.

## Installation

``` r
devtools::install_github("rugilelt/EnsembleAgeR")
devtools::install_github("MorganLevineLab/methylCIPHER")
```

## Functions

All three functions predict chronological age. Dataset containing methylation values is needed for these functions.
lmPredictAge - trained using linear regression.
rfPredictAge - trained using random forest.
svmPredictAge - trained using support vector machines.

## Usage

``` r
library(EnsembleAgeR)
library(methylCIPHER)

lmPredictAge(dataset)
rfPredictAge(dataset)
svmPredictAge(dataset)
```
