#' CellAge Gene Interventions
#'
#' Database of human genes associated with cellular senescence
#' 
#' @format A table with 279 rows and 9 variables:
#' \describe{
#'   \item{hagrid}{Primary HAGR id of compound}
#'   \item{gene_name}{Gene name } 
#'   \item{hgnc_id}{Compound ID in the HGNC database}
#'   \item{entrez_id}{Gene Entrez ID}
#'   \item{organism}{Organim - currently all Human}
#'   \item{cancer_type}{Cancer cell line - Yes or No}
#'   \item{senescence_effect}{Oncogene-induced, stress-induced and/or replicative}
#'   \item{description}{Further description for gene}
#'   \item{notes}{Additional notes}
#' }
#' 
#' @source \url{https://genomics.senescence.info/cells/}
"cellAge_gene_interventions"