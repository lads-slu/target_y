####ymaps##########
#VERSION: SEE version.r
#AUTHORS: MATS SöDERSTRöM (SLU), 
#AUTHORS: KRISTIN PIIKKI (SLU)
#AUTHORS: HENRIK STADIG (HS)
#BEFIRE USE: read terms.r
#########################

# Date November 16, 2023
# version: 2.0.0
# Prepared by: Kristin 
# Notes: 
# Nu ej längre beroende av avvecklade R-paket för rumslig analys.

# Date April 30, 2023
# version: 1.1.4
# Prepared by: Kristin 
# Notes: 
# Nu med havre.


# Date July 01, 2022
# version: 1.1.3
# Prepared by: Kristin 
# Notes: 
# utvecklingsversion

# Date July 01, 2022
# version: 1.1.2
# Prepared by: Kristin 
# Notes: 
# values

# Date June 28, 2022
# version: 1.1.1
# Prepared by: Kristin 
# Notes: 
# values 255 are set to 254 before export to avoid possible problems when using rasters.

# Date April 08, 2022
# version: 1.1.1
# Prepared by: Kristin 
# Notes: 
# Model parameters updated with data also from 2022. Please note that there are 
# now fewer cultivars with cultivar-specific models

# Date March 26, 2022
# version: 1.1.0
# Prepared by: Kristin 
# Notes: 
# Also a tif-file with continuous yield values will be exported

# Date February 26, 2021
# version: 1.0.9
# Prepared by: Kristin 
# Notes: 
# More detailed terms.r

# Date June 24, 2020
# version: 1.0.8
# Prepared by: Kristin 
# Notes: 
# A map with three classes is now computed and exported

# Date June 22, 2020
# version: 1.0.6
# Prepared by: Kristin 
# Notes: 
# fixed erroneous generation of no data-pixels

# Date May 22, 2020
# version: 1.0.5
# Prepared by: Kristin 
# Notes: 
# updated filtering of index data: 1) shrink, 2) mean filter 
# (incl fill back to original extent) and 3) bilinear disaggregation

# Date May 13, 2020
# version: 1.0.4
# values <2.5-percentile and >97.5-percentile are set to the respective percentile
# Spatial filetering of outliers
# Model parameters changed to parameters based on non-panel-adjusted data

# Date May 05, 2020
# version: 1.0.3
# Prepared by: Kristin 
# Notes: 
# Values in index.tif scaled 0-255 and exported as INT1U
# Parameters and instructions for backtransforming exported
# Cultivar-specific models implemented.

# Date May 04, 2020
# version: 1.0.2
# Prepared by: Kristin 
# Notes: Moved all indata to userdata. Serverdata not used any more.
# Notes: Added argument cultuvar but it is not functional yet.

# Date March 03, 2020
# version: 1.0.1
# Prepared by: Kristin 
# Notes: Changed so that all spatial datasets are projected onto EPSG:3857.
# Notes: Prepared for yield mapping in different crops.

# Date February 27, 2020
# version: 1.0.0
# Prepared by: Kristin 
# Notes: First version to be used for web development. Parameters must be 
#replaced before opened for public use.