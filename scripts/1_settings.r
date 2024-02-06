#remove all objects
rm(list=ls())

#install required packages (if not already installed) and load them
pkgs <- c("terra", "rstudioapi")
sel <- !pkgs %in% rownames(installed.packages())
if(any(sel)){install.packages(pkgs[sel])}
invisible(lapply(X=pkgs, FUN=require, character.only = TRUE))

#set working directory
wd<-dirname(dirname(getSourceEditorContext()$path)) #now it automatically finds the parent folder to folder where this script is saved
setwd(wd)

#define objects
index.tif<-file.path('in','index','ndre75.tif')
aoi.shape <- file.path('in','aoi','aoi.shp') # polygon shape-file.
out.folder <-file.path('out') #folder to be created under working directory. All exported files are written to this folder.
yield.mean <- 5000 # a number, mean yield for the field (kg ha-1) from the user.
crop<-'oats' #"oats", 'winterwheat' 'maltingbarley'
cultivar<-'General' #see separate table which cultivars shall be available for different crops

#run all
source('scripts\\2_define_functions.r')
source('scripts\\3_import_data.r')
source('scripts\\4_create_yield_map.r')
source('scripts\\5_export_data.r')

###Note: All spatial datasets must be projected onto the coordinate system EPSG:3006