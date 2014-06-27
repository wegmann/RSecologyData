#' @title load all vector files stored in the RSecologyData package
#' 
#' @description All files are spatial vector data sets (Polygons, Lines or Points) providing information 
#' such as border of protected areas, field sampling sites or roads. 
#' @keywords shape vector, spatial data frames
#' @details the files are
#' lsat_extent_LL: landsat extent for path 224 r63 (geographic coordinates lat long)
#' pa: protected areas of the area covered by lsat_extent (projection UTM north WGS84)
#' roads: roads of the area covered by lsat_extent (projection UTM north WGS84)
#' @export
#' @seealso load_raster()
#' @examples
#' load_vector()
#' plot(lsat_extent_LL)
#' ##
#' plot(pa)
#' plot(abspres_poi,col="yellow",add=T)
#' @references
#' \href{http://remote-sensing-biodiversity.org/rsecology-book}.
#' @author Martin Wegmann

        load_vector <- function(overwrite=TRUE){
#                               x <- c("lsat_extent_LL","lsat_extent","modis_extent","roads","pa","abspres_poi","pres_poi","count_poi","trend_poi","study_area")
                              x <- c("lsat_extent_LL","roads","pa","abspres_poi","pres_poi","count_poi","trend_poi")
                              
                              for ( i in x) {
                              if(exists(i)) warning('object "', i, '" already exists',call.=FALSE)
                              else(
                              assign(i,readRDS(system.file(paste("extdata/",i,".rds",sep=""),package="RSecologyData")),envir=.GlobalEnv)
                              )
                              }
            }
    
#' data: vector file with the extent of the Landsat scene path 224 r 63 - SpatialPolygonsDataFrame
#' 
#' Contains a polygon of the area of the Landsat scene with path 224 and row 63 of the WRS2 system.
#'
#' @docType data
#' @name load_vector

NULL


