#' @title load all vector files for RS eco 
#' 
#' @description kurzbeschreibung
#' @keywords shape vector, spatial data frames
#' @details details
#' @export
#' @seealso loadraster()
#' @examples
#' loadvector()
#' plot(lsat_extent_LL)
#' @author Martin Wegmann


loadvector <- function(overwrite=TRUE){
  if(exists("lsat_extent_LL")) warning("file 'lsat_extent_LL' already exists",call.=FALSE)
  else(
  lsat_extent_LL<<-readRDS(system.file("extdata/lsat_extent_LL.rds",package="rsecodata"))
  )
}


#' Worldwide Reference System - 2 (WRS2) SpatialPolygonsDataFrame
#' 
#' Contains polygons of the area of each path and row for the ascending and 
#' descending nodes of the WRS2 system.
#'
#' @docType data
#' @name wrs2_asc_desc
#' @seealso wrs1_asc_desc
#' @references
#' \href{http://landsat.usgs.gov/tools_wrs-2_shapefile.php}{WRS-2 Shape files 
#' courtesy of the U.S. Geological Survey}.
NULL


#' data: vector file with the extent of the Landsat scene path 224 r 63 - SpatialPolygonsDataFrame
#' 
#' Contains a polygon of the area of the Landsat scene with path 224 and row 63 of the WRS2 system.
#'
#' @docType data
#' @name lsat_extent_LL
#' @seealso wrs2_asc_desc
#' @examples
#' plot(lsat_extent_LL)
#' @references
#' \href{http://landsat.usgs.gov/tools_wrs-2_shapefile.php}{WRS-1 Shape files 
#' courtesy of the U.S. Geological Survey}.
NULL


