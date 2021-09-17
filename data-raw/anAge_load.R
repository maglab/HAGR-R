# anAge_load.R

library(tidyverse)




anAge_age_raw <- readr::read_csv("data-raw/AnAge/age.csv")
anAge_biblio_raw <- readr::read_csv("data-raw/AnAge/biblio.csv")
anAge_development_raw <-
  readr::read_csv("data-raw/AnAge/development.csv")
anAge_metabolism_raw <-
  readr::read_csv("data-raw/AnAge/metabolism.csv")
anAge_names_raw <- readr::read_csv("data-raw/AnAge/names.csv")



anAge_age <- anAge_age_raw[, ]
anAge_biblio <- anAge_biblio_raw[, ]
anAge_age[["hagrid"]] <-
  anAge_names[match(anAge_age[['hagrid']], anAge_names[['id_hagr']]) , 'name_common']
anAge_development <- anAge_development_raw[, ]
anAge_development[["hagrid"]] <-
  anAge_names[match(anAge_development[['hagrid']], anAge_names[['id_hagr']]) , 'name_common']
anAge_metabolism <- anAge_metabolism_raw[, ]
anAge_metabolism[["hagrid"]] <-
  anAge_names[match(anAge_metabolism[['hagrid']], anAge_names[['id_hagr']]) , 'name_common']
anAge_names <- anAge_names_raw[, ]



anAge_age <- readr::type_convert(anAge_age)
anAge_biblio <- readr::type_convert(anAge_biblio)
anAge_development <- readr::type_convert(anAge_development)
anAge_metabolism <- readr::type_convert(anAge_metabolism)
anAge_names <- readr::type_convert(anAge_names)


usethis::use_data(anAge_age, overwrite = TRUE)
usethis::use_data(anAge_biblio, overwrite = TRUE)
usethis::use_data(anAge_development, overwrite = TRUE)
usethis::use_data(anAge_metabolism, overwrite = TRUE)
usethis::use_data(anAge_names, overwrite = TRUE)