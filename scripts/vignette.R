# Seurat demo file
# https://satijalab.org/seurat/articles/seurat5_spatial_vignette.html

# install.packages("Seurat")
# # https://github.com/satijalab/seurat-data
 # devtools::install_github('satijalab/seurat-data')

library(Seurat)
options(Seurat.object.assay.version = "v5")
library(SeuratData)
library(ggplot2)
library(patchwork)
library(dplyr)
options(future.globals.maxSize = 1e+09)

InstallData("stxBrain")

brain <- LoadData("stxBrain", type = "anterior1")
brain[["Spatial"]] <- as(brain[["Spatial"]], Class = "Assay5")