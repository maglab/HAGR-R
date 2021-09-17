# gendr_load.R

library(tidyverse)

genDR_biblio_raw <- readr::read_csv("data-raw/GenDR/biblio.csv")
genDR_biblio_genes_raw <- readr::read_csv("data-raw/GenDR/biblio_genes.csv")
genDR_expression_raw <- readr::read_csv("data-raw/GenDR/expression.csv")
genDR_genes_raw <- readr::read_csv("data-raw/GenDR/genes.csv")
genDR_homologs_raw <- readr::read_csv("data-raw/GenDR/homologs.csv")
genDR_orthologs_raw <- readr::read_csv("data-raw/GenDR/orthologs.csv")





genDR_biblio <- genDR_biblio_raw[,]
genDR_biblio_genes <- genDR_biblio_genes_raw[,] 
genDR_expression <- genDR_expression_raw[,]
genDR_genes <- genDR_genes_raw[,]
genDR_homologs<- genDR_homologs_raw[,]
genDR_orthologs <- genDR_orthologs_raw[,]



genDR_biblio <- readr::type_convert(genDR_biblio)
genDR_biblio_genes <- readr::type_convert(genDR_biblio_genes)
genDR_expression <- readr::type_convert(genDR_expression)
genDR_genes <- readr::type_convert(genDR_genes)
genDR_homologs <- readr::type_convert(genDR_homologs)
genDR_orthologs <- readr::type_convert(genDR_orthologs)


usethis::use_data(genDR_biblio,overwrite = TRUE)
usethis::use_data(genDR_biblio_genes,overwrite = TRUE)
usethis::use_data(genDR_expression,overwrite = TRUE)
usethis::use_data(genDR_genes,overwrite = TRUE)
usethis::use_data(genDR_homologs,overwrite = TRUE)
usethis::use_data(genDR_orthologs,overwrite = TRUE)