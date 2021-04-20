# druAge_load.R

library(tidyverse)

drugAge_results_raw <- readr::read_csv("data-raw/DrugAge/results.csv")
drugAge_compounds_raw <- readr::read_csv("data-raw/DrugAge/compounds.csv")
drugAge_biblio_raw <- readr::read_csv("data-raw/DrugAge/biblio.csv")

# Load drugage results table and replace compound and biblio ids with corresponding values from compound and biblio tables
drugAge_results <- drugAge_results_raw[,]
drugAge_results[["compound_id"]] <- drugAge_compounds_raw[ match(drugAge_results[['compound_id']], drugAge_compounds_raw[['id']] ) , 'compound_name']
drugAge_results[["biblio_id"]] <- drugAge_biblio_raw[ match(drugAge_results[['biblio_id']], drugAge_biblio_raw[['id_biblio']] ) , 'title']
drugAge_results <- readr::type_convert(drugAge_results)

usethis::use_data(drugAge_results,overwrite = TRUE)