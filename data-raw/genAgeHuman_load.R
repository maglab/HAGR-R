# genAgeHuman_load.R

library(tidyverse)

genAgeHuman_features_raw <- readr::read_csv("data-raw/GenAgeHuman/features.csv")
genAgeHuman_gene_bio_raw <- readr::read_csv("data-raw/GenAgeHuman/gene_biblio.csv")
genAgeHuman_names_raw <- readr::read_csv("data-raw/GenAgeHuman/names.csv")

#load the features table as the main table and names table for gene information
genAgeHuman_features <- genAgeHuman_features_raw[,]
# Some clean-up 
genAgeHuman_features[["hagrid"]] <- genAgeHuman_gene_bio[ match(genAgeHuman_features[["hagrid"]], genAgeHuman_gene_bio[['hagr_id']] ) , 'gene_symbol']


genAgeHuman_names <- genAgeHuman_names_raw[1:5] #pubmed column has no values
genAgeHuman_gene_bio <- genAgeHuman_gene_bio_raw[,] #use this to add the correct pubmed IDs and also add to data

#prepare to load
genAgeHuman_features <- readr::type_convert(genAgeHuman_features)
genAgeHuman_names <- readr::type_convert(genAgeHuman_names)
genAgeHuman_gene_bio <- readr::type_convert(genAgeHuman_gene_bio)

#Add to /data for final package 
usethis::use_data(genAgeHuman_features, overwrite = TRUE)
usethis::use_data(genAgeHuman_names, overwrite = TRUE)
usethis::use_data(genAgeHuman_gene_bio, overwrite = TRUE)