#TODO supress warnings

#load libraries to be used
library(RMySQL)
library(dbConnect)
options(warn=-1)

#' Export to csv
#' @return drugAge.csv file
#' @export
drugsToCsv <- function() {

  print('This will produce a csv file')
}

#' Compare an input list of compounds with drugAge compounds
#'
#' @param druglist Character vector containing compound names
#' @return The percentage match and all the matching drugs
#' @examples
#' myCompounds <- c('metformins','aspirin','blueberry','ethanol');
#' drugsCompare(myCompounds)
#' 75 % match to your list!
#' [1,] "ethanol"
#' [2,] "aspirin"
#' [3,] "metformin"
drugsCompare <- function(drugList) {
  drugAgeComps <- tolower(compounds$compound_name);
  temp <- intersect(drugAgeComps,drugList);
  result <- matrix(temp);
  percMatch <- nrow(result) / length(drugList) * 100;
  cat(percMatch, '% match to your list!');
  return(result);
}
