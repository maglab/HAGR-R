#load libraries to be used
library(RMySQL)
library(dbConnect)
options(warn=-1)

#' Returns ageing and life history information in animals, including extensive longevity records, from HAGR AnAge
#' @return age, biblio, cysteine, development, habitat, links, metabolism, names, refs
#' @export
AnAge <- function(){
  driver = dbDriver("MySQL");
  connection = dbConnect(driver, user='root', password='password', dbname='dev_anage', host='127.0.0.1',port=3306);
  assign("age",dbGetQuery(connection, statement= paste("select * from age")),.GlobalEnv);
  assign("biblio",dbGetQuery(connection, statement= paste("select * from biblio")),.GlobalEnv);
  assign("development",dbGetQuery(connection, statement= paste("select * from development")),.GlobalEnv);
  assign("links",dbGetQuery(connection, statement= paste("select * from links")),.GlobalEnv);
  assign("metabolism",dbGetQuery(connection, statement= paste("select * from metabolism")),.GlobalEnv);
  assign("names",dbGetQuery(connection, statement= paste("select * from names")),.GlobalEnv);
  assign("refs",dbGetQuery(connection, statement= paste("select * from refs")),.GlobalEnv);
}

#' Returns ageing and life history information in animals, including extensive longevity records, from HAGR AnAge
#' @return age, biblio, cysteine, development, habitat, links, metabolism, names, refs
#' @export
CellAge <- function(){
  driver = dbDriver("MySQL");
  connection = dbConnect(driver, user='root', password='password', dbname='dev_cell_age', host='127.0.0.1',port=3306);
  assign("cell",dbGetQuery(connection, statement= paste("select * from senescence")),.GlobalEnv);
  assign("gene_interventions", dbGetQuery(connection, statement = paste("select * from gene_interventions")),.GlobalEnv);
}



#' Returns all the tables in the DrugAge database
#' @return biblio, compound_interactions, compound_synonyms, compounds, drugs
#' @export
DrugAge <- function(){
  driver = dbDriver("MySQL");
  connection = dbConnect(driver, user='root', password='password', dbname='dev_drug_age', host='127.0.0.1',port=3306);
  assign("biblio",dbGetQuery(connection, statement= paste("select * from biblio")),.GlobalEnv);
  assign("compound_interactions",dbGetQuery(connection, statement= paste("select * from compound_interactions")),.GlobalEnv);
  assign("compound_synonyms",dbGetQuery(connection, statement= paste("select * from compound_synonyms")),.GlobalEnv);
  assign("compounds",dbGetQuery(connection, statement= paste("select * from compounds")),.GlobalEnv);
  assign("drugs",dbGetQuery(connection, statement= paste("select * from results")),.GlobalEnv);
}

#' Returns all data assocated with ageing in humans from HAGR GenAge human
#' @return Hbiblio, HFeatures, Hgene_biblio, hGO, Hhomolog, Hinteractions, Hlinks, Hmicroarray, Hnames, Horthologs, Hrefs and Hsequences
#' @export
GenAgeHuman <- function(){
  driver = dbDriver("MySQL");
  connection = dbConnect(driver, user='root', password='password', dbname='dev_genage_human', host='127.0.0.1',port=3306);
  assign("biblio",dbGetQuery(connection, statement= paste("select * from biblio")),.GlobalEnv);
  assign("names",dbGetQuery(connection, statement= paste("select * from names")),.GlobalEnv);
  assign("gene_biblio",dbGetQuery(connection, statement= paste("select * from gene_biblio")),.GlobalEnv);
  assign("features",dbGetQuery(connection, statement= paste("select * from features")),.GlobalEnv);
  assign("go",dbGetQuery(connection, statement= paste("select * from go")),.GlobalEnv);
  assign("homologs",dbGetQuery(connection, statement= paste("select * from homologs")),.GlobalEnv);
  assign("interactions",dbGetQuery(connection, statement= paste("select * from interactions")),.GlobalEnv);
  assign("links",dbGetQuery(connection, statement= paste("select * from links")),.GlobalEnv);
  assign("microarray",dbGetQuery(connection, statement= paste("select * from microarray")),.GlobalEnv);
  assign("orthologs",dbGetQuery(connection, statement= paste("select * from orthologs")),.GlobalEnv);
  assign("refs",dbGetQuery(connection, statement= paste("select * from refs")),.GlobalEnv);
  assign("sequences",dbGetQuery(connection, statement= paste("select * from sequences")),.GlobalEnv);
}

#' Returns all data assocated with ageing in models from HAGR GenAge models
#' @return Mbiblio, Morthologs, Mlongevity, Mgene_biblio, Mmodels
#' @export
GenAgeModels <- function(){
  driver = dbDriver("MySQL");
  connection = dbConnect(driver, user='hagR', password='hagR.123', dbname='dev_genage_models', host='178.79.139.157',port=3306)
  assign("Mbiblio",dbGetQuery(connection, statement= paste("select * from biblio")),.GlobalEnv);
  assign("Mgene_biblio",dbGetQuery(connection, statement= paste("select * from gene_biblio")),.GlobalEnv);
  assign("Mlongevity",dbGetQuery(connection, statement= paste("select * from longevity")),.GlobalEnv);
  assign("Morthologs",dbGetQuery(connection, statement= paste("select * from orthologs")),.GlobalEnv);
  assign("Mmodels",dbGetQuery(connection, statement= paste("select * from models")),.GlobalEnv);
}

#THE BELOW IS JUST TO RUN ONCE, TO SAVE ALL THE RIGHT DATA TO THE ./data folder.

#' Imports only the 'drugs' table from the DrugAge database, into the .RData folder
#' @return biblio, compound_interactions, compound_synonyms, compounds, drugs
#' @export
DrugsTable <- function(){
  save(compounds, file = 'compounds.RData') #save to an RData file
  load('compounds.Rdata') #load the data into workspace
}

CellAgeTables <- function(){
  save(cell, file='cell.RData')
  save(gene_interventions, file='gene_interventions.RData')
  load('cell.Rdata')
  load('gene_interventions.Rdata')
}

AnAgeTables <- function(){
  save(biblio, file='biblio.RData')
  save(development, file='development.RData')
  save(links, file='links.RData')
  save(metabolism, file='metabolism.RData')
  save(names, file='names.RData')
  save(refs, file='refs.RData')

}

GenAgeTables <- function(){
  save(biblio, file='biblio.RData')
  save(features, file='features.RData')
  save(gene_biblio, file='gene_bio.RData')
  save(go, file='go.RData')
  save(homologs, file='homologs.RData')
  save(interactions, file='interactions.RData')
  save(links, file='links.RData')
  save(microarray, file='microarray.RData')
  save(names, file='names.RData')
  save(orthologs, file='orthologs.RData')
  save(refs, file='refs.RData')
  save(sequences, file='sequences.RData')
  
}
