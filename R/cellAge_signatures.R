#' CellAge Gene Signatures
#'
#' Database of human genes that are either over-expressed or under-expressed during replicative senescence of human cells
#' 
#' @format A table with 1259 rows and 7 variables:
#' \describe{
#'   \item{gene_symbol}{Gene symbol}
#'   \item{gene_name}{Gene name } 
#'   \item{entrez_id}{Gene Entrez ID}
#'   \item{total}{Total number of genes in study}
#'   \item{overexp}{Number of genes overexpressed}
#'   \item{underexp}{Number of genes underexpressed}
#'   \item{p_value}{p-value}
#' }
#' 
#' @source \url{https://genomics.senescence.info/cells/signatures.php}
"cellAge_signatures"