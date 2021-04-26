# cellAge_load.R

library(tidyverse)

cellAge_gene_interventions_raw <- readr::read_csv("data-raw/CellAge/gene_interventions.csv")
cellAge_signatures_raw <- readr::read_csv("data-raw/CellAge/signatures.csv")

# Load cellage gene interventions and signatures table
cellAge_gene_interventions <- cellAge_gene_interventions_raw[,]
cellAge_signatures <- cellAge_signatures_raw[2:8] 


cellAge_gene_interventions <- readr::type_convert(cellAge_gene_interventions)
cellAge_signatures <- readr::type_convert(cellAge_signatures)



usethis::use_data(cellAge_gene_interventions,overwrite = TRUE)
usethis::use_data(cellAge_signatures,overwrite = TRUE)