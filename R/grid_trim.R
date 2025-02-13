## ---------------------------
## Script name: grid_trim.R
##
## Purpose of script: Uses a shapefile or bounding box to trim the FIShBOT grid
##  to the specified size
##
## Date Created: 2025-02-13
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
#' grid_trim
#' 
#' Uses a shapefile or bounding box to trim the FIShBOT grid to the specified size
#'
#' @param clip_shape can either be a polygon shapefile, a bounding box in the format
#'    c(min_lat, max_lat, min_lon, max_lon) with all coordinates expressed in decimal
#'    degrees, or a character vector of statistical areas in the format 
#'    c("SA-514","SA-521"). This vector can be any length. Note that the clip is 
#'    exact. Grid cells that are intersected by the clip_shape will be 
#'    proportioned in subsequent analyses. There is no default value for clip_shape. 
#' 
#' @return Returns a trimmed version of the FIShBOT grid as a spatial dataframe
#'
#' @examples
#' 
#' grid_trim(
#'   clip_shape=c(42,43,-72,-71)
#'   )
#'   
#' @export

grid_trim=function(clip_shape){
  ## Select the clip polygon based on the user input
  if(typeof(clip_shape)=="double"){
    ## If the clip_shape argument is in the format "double" it is treated as a 
    ## bounding box and assigned a NAD83 projection
    clip_poly=as(raster::extent(clip_shape[3],clip_shape[4],clip_shape[1],clip_shape[2]), "SpatialPolygons")
    raster::crs(clip_poly)="+proj=longlat +ellps=GRS80 +datum=NAD83
+no_defs +towgs84=0,0,0"
  } else {
    if(typeof(clip_shape)=="character"){
      ## If the clip_shape argument is a character argument it is treated as a 
      ## vector of Statistical Areas, which are extracted from a
      ## shapefile retrieved from https://www.fisheries.noaa.gov/resource/map/greater-atlantic-region-statistical-areas
      ## and stored within the package
      clip_poly=subset(stat_areas,stat_areas$Id%in%as.numeric(gsub("SA-","",clip_shape)))
    } else {
    if(typeof(clip_shape)=="list"){
      ## If the clip_shape argument is a list, it is treated as a spatial object already
      clip_poly=clip_shape
      }
    }
  }
  intersect_grid=sf::st_intersection(grid_7km,clip_poly)
  return(intersect_grid)
}
