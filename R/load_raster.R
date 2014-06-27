#' @title load all raster files stored in the RSecologyData package
#' 
#' @description All files are spatial raster sets (bricks or single raster)
#' @keywords raster
#' @details the files are
#' lsatp224r63_2005: Landsat ... (date, 2005; path 224 row 63, projection UTM north WGS84)
#' @export
#' @seealso load_vector()
#' @examples
#' load_vector()
#' plot(lsat_extent_LL)
#' ##
#' plot(pa)
#' plot(abspres_poi,col="yellow",add=T)
#' @references
#' \href{http://remote-sensing-biodiversity.org/rsecology-book}.
#' @author Martin Wegmann


        load_raster <- function(overwrite=TRUE){
                              x <- c("lsat224r63_2005")
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
#' @name lsat_extent_LL
#' @seealso lsat_p224r63_2005
#' @examples
#' plot(lsat_extent_LL)
#' ##
#' plot(pa)
#' plot(abspres_poi,col="yellow",add=T)

NULL


