#' GenAge Human Genes
#'
#' Database of genes related to ageing in Humans
#' 
#' @format A table with 307 rows and 8 variables:
#' \describe{
#'   \item{id}{Primary id of gene}
#'   \item{hagrid.gene_symbol}{Gene symbol linked to HAGR ID} 
#'   \item{why}{Reasoning behind including gene in GenAge}
#'   \item{band}{Cytogenetic band}
#'   \item{location_start}{Cytogenetic start location}
#'   \item{location_end}{Cytogenetic end location}
#'   \item{orientation}{Plus or Minus strand}
#'   \item{phenotype}{Potential phenotypic relvance to ageing}
#' }
#' @source \url{https://genomics.senescence.info/genes/query.php}
"genAgeHuman_features"