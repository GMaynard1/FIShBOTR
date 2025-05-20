## ---------------------------
## Script name: grid_select.R
##
## Purpose of script: Uses latitude and longitude points to select grid id values
##
## Date Created: 2025-05-20
##
## Software code created by U.S. Government employees is
## not subject to copyright in the United States
## (17 U.S.C. §105).
##
## Email: george.maynard@noaa.gov
##
## ---------------------------
## Notes: 
##
## ---------------------------
#' grid_select
#' 
#' Uses latitude and longitude points to select grid id values
#' 
#' @param data a dataframe that includes at least the parameters latitude and
#'    longitude in decimal degrees
#' 
#' @return Returns the dataframe with an additional column of index values
#' 
#' @examples
#' 
#'   dat=data.frame(
#'     site_names = c("Skate Bank","Cholera Bank"),
#'     latitude = c(43.611,40.395),
#'     longitude = c(-68.646,-73.581)
#'     )
#'   grid_select(df)
#'   
#'   @export

grid_select=function(data){
  if(class(data)[1]=="data.frame"){
    sp::coordinates(data) = cbind(data$longitude,data$latitude)
    data=sf::st_as_sf(
      data
    )
    data=sf::st_transform(
      data,
      crs=4326
    )
  }
  grid_7km=sf::st_transform(
    grid_7km,
    crs=4326
  )
  id=grid_7km[,"id"]
  new_data=sf::st_intersection(id,data)
  return(new_data)
}
