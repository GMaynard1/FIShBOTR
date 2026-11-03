# grid_trim

Uses a shapefile or bounding box to trim the FIShBOT grid to the
specified size

## Usage

``` r
grid_trim(clip_shape)
```

## Arguments

- clip_shape:

  can either be a polygon shapefile (NAD83), a bounding box in the
  format c(min_lat, max_lat, min_lon, max_lon) with all coordinates
  expressed in decimal degrees, a character vector of statistical areas
  in the format c("SA-514","SA-521") or a character vector of a single
  Ecosystem Production Unit (EPU) that can be one of the following:
  "EPU-GOM", "EPU-GB", "EPU-SS" or "EPU-MAB" for Gulf of Maine, Georges
  Bank, Scotian Shelf, and Mid-Atlantic Bight respectively. Note that
  the clip is exact. Grid cells that are intersected by the clip_shape
  will be proportioned in subsequent analyses. There is no default value
  for clip_shape.

## Value

Returns a trimmed version of the FIShBOT grid as a spatial dataframe

## Examples

``` r

grid_trim(
  clip_shape=c(42,43,-72,-71)
  )
#> Error in loadNamespace(x): there is no package called ‘raster’
  
```
