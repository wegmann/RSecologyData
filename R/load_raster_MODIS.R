#' @title load MODIS raster files stored in the RSecologyData package
#' 
#' @description All files are spatial raster sets (bricks or single raster)
#' @keywords raster
#' @details MODIS files
#' 
#' "MCD43A42005_193_201.005.b1-7.UTMnorth": MODIS data  ... (July 2005, h 13+12, v 9, mosaiced, projection UTM north WGS84)
#' 
#' lsatp224r63_2005: Landsat ... (date, 2005; path 224 row 63, projection UTM north WGS84)
#' 
#' 
#' @export
#' @seealso load_raster_LSAT(), load_vector()
#' @examples
#' load_raster_MODIS()
#' plotRGB(lsat224r63_2005,1,2,3,stretch="lin")


#' @docType data
#' @name load_raster_MODIS
#' @references
#' \href{http://remote-sensing-biodiversity.org/rsecology-book}.
#' @author Martin Wegmann


        load_raster_MODIS <- function(overwrite=TRUE){
          x <- c("MCD43A42005_193_201.005.b1-7.UTMnorth")
          for ( i in x) {
            if(exists(i)) warning('object "', i, '" already exists',call.=FALSE)
            else(
              assign(i,readRDS(system.file(paste("extdata/",i,".rds",sep=""),package="RSecologyData")),envir=.GlobalEnv)
            )
          }
        }
