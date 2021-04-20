#' A curated database of compounds that modulate longevity in model organisms
#'
#' The DrugAge database contains an extensive compilation of drugs, compounds and supplements (including natural products and nutraceuticals) with anti-ageing properties that extend longevity in model organisms. Our focus is on drugs/compounds potentially impacting on ageing, and therefore drugs/compounds extending lifespan in disease-prone animals (e.g., cancer models) are excluded.
#'
#' @format A table with 1823 rows and 14 variables:
#' \describe{
#'   \item{id}{Primary id of compound}
#'   \item{compund_id.compound.name}{Compound name} 
#'   \item{species}{Model organism strain}
#'   \item{strain}{Species strain}
#'   \item{dosage}{Compound dosage in various units}
#'   \item{avg_lifespan_change_percent}{Average lifespan change as a percentage}
#'   \item{max_lifespan_change_percent}{Maximum lifespan change as a percentage}
#'   \item{gender}{Species gender}
#'   \item{significance}{Significance as calculated by p-value - Yes, No, or Non-Determined}
#'   \item{pubmed_id}{Pubmed ID of primary reference for compound}
#'   \item{notes}{Additional notes}
#'   \item{biblio_id.title}{Title of primary reference for compound}
#'   \item{last_modified}{Date when item was last updated}
#'   \item{p_value}{Experimental p-value}
#' }
#' @source \url{https://genomics.senescence.info/drugs/index.php}
"drugAge_results"