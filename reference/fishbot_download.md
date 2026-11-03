# fishbot_download

First pass at this downloads a .csv file within a date range and
bounding box

## Usage

``` r
fishbot_download(EPU = NA, startDate, endDate)
```

## Arguments

- EPU:

  the EPU of the dataset to download. Acceptable values include 'GOM'
  for Gulf of Maine, 'GB' for Georges Bank, or 'MAB' for Mid-Atlantic
  Bight. The default value is NA (no bounding box applied).

- startDate:

  The earliest date to return. Must be provided in the format
  yyyy-mm-dd. No default value is provided.

- endDate:

  The latest date to return. Must be provided in the format yyyy-mm-dd.
  No default value is provided.

## Value

Returns a dataframe including the following variables

- time (yyyy-mm-dd)

- temperature (average bottom temperature of a cell in degrees C)

- temperature_min (minimum observed bottom temperature of a cell in
  degrees C)

- tempertaure_max (maximum observed bottom temperature of a cell in
  degrees C)

- temperature_std (standard deviation of bottom temperature in a cell in
  degrees C)

- temperature_count (number of observations of bottom temperature in a
  cell)

- data_source (which program contributed the observations)

- stat_area (NOAA statistical area the cell is in)

- depth (GEBCO depth of the cell in meters)

- latitude (NAD83 decimal degrees)

- longitude (NAD83 decimal degrees)

## Examples

``` r

fishbot_download(
  EPU = 'GOM',
  startDate = '2023-08-01',
  endDate = '2023-08-31'
  )
#> Warning: cannot open URL 'https://erddap.ondeckdata.com/erddap/tabledap/fishbot_realtime.csvp?time%2Ctemperature%2Ctemperature_min%2Ctemperature_max%2Ctemperature_std%2Ctemperature_count%2Cdata_source%2Cgrid_id%2Cstat_area%2Cdepth%2Clatitude%2Clongitude&time%3E=2023-08-01T00%3A00%3A00Z&time%3C=2023-08-31T00%3A00%3A00Z&latitude%3E=41.70484&latitude%3C=NA&longitude%3E=NA&longitude%3C=NA': HTTP status was '400 Bad Request'
#> Error in file(file, "rt"): cannot open the connection to 'https://erddap.ondeckdata.com/erddap/tabledap/fishbot_realtime.csvp?time%2Ctemperature%2Ctemperature_min%2Ctemperature_max%2Ctemperature_std%2Ctemperature_count%2Cdata_source%2Cgrid_id%2Cstat_area%2Cdepth%2Clatitude%2Clongitude&time%3E=2023-08-01T00%3A00%3A00Z&time%3C=2023-08-31T00%3A00%3A00Z&latitude%3E=41.70484&latitude%3C=NA&longitude%3E=NA&longitude%3C=NA'
  
```
