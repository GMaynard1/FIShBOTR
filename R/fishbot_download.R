## ---------------------------
## Script name: fishbot_download.R
##
## Purpose of script: Downloads the fishbot data from ERDDAP according to user inputs
##
## Date Created: 2025-02-12
##
## Software code created by U.S. Government employees is
## not subject to copyright in the United States
## (17 U.S.C. §105).
##
## Email: george.maynard@noaa.gov
##
## ---------------------------
## Notes: This should be performance tested against rerddap if we go with .csv
##
## ---------------------------
#' fishbot_download
#' 
#' First pass at this downloads a .csv file within a date range and bounding box
#'
#' @param region the region of the dataset to download. Acceptable values include
#'  'GOM' for Gulf of Maine, 'SNE' for Southern New England, or 'MAB' for Mid-Atlantic
#'  Bight. The default value is NA (no bounding box applied).
#' @param startDate The earliest date to return. Must be provided in the format yyyy-mm-dd.
#'  No default value is provided. 
#' @param endDate The latest date to return. Must be provided in the format yyyy-mm-dd.
#'  No default value is provided. 
#' 
#' @return Returns a dataframe including the following variables
#'    - time (yyyy-mm-dd)
#'    - temperature (average bottom temperature of a cell in degrees C)
#'    - temperature_min (minimum observed bottom temperature of a cell in degrees C)
#'    - tempertaure_max (maximum observed bottom temperature of a cell in degrees C)
#'    - temperature_std (standard deviation of bottom temperature in a cell in degrees C)
#'    - temperature_count (number of observations of bottom temperature in a cell)
#'    - data_source (which program contributed the observations)
#'    - stat_area (NOAA statistical area the cell is in)
#'    - depth (GEBCO depth of the cell in meters)
#'    - latitude (NAD83 decimal degrees)
#'    - longitude (NAD83 decimal degrees)
#'
#' @examples
#'
#' fishbot_download(
#'   region = 'GOM',
#'   startDate = '2023-08-01',
#'   endDate = '2023-08-31'
#'   )
#'   
#' @export

fishbot_download=function(region=NA,startDate,endDate){
  ## Select bounding box, if necessary
  if(is.na(region)==FALSE){
    coords=ifelse(
      region=='GOM',
      c(1,1,1,1),
      ifelse(
        region=='SNE',
        c(1,1,1,1),
        ifelse(
          region=='MAB',
          c(1,1,1,1),
          stop("\n Region Not Recognized, please select 'GOM','SNE', or 'MAB' or leave blank \n")
        )
      )
    )
  } else {
    coords=c(20,60,-40,-90)
  }
  ## Paste parameters together to create URL
  url=paste0(
    "https://erddap.ondeckdata.com/erddap/tabledap/fishbot_realtime.csvp?time%2Ctemperature%2Ctemperature_min%2Ctemperature_max%2Ctemperature_std%2Ctemperature_count%2Cdata_source%2Cgrid_id%2Cstat_area%2Cdepth%2Clatitude%2Clongitude&time%3E=",
    startDate,
    "T00%3A00%3A00Z&time%3C=",
    endDate,
    "T00%3A00%3A00Z&latitude%3E=",
    coords[1],
    "&latitude%3C=",
    coords[2],
    "&longitude%3E=",
    coords[4],
    "&longitude%3C=",
    coords[3]
  )
  data=read.csv(url)
  return(data)
}
