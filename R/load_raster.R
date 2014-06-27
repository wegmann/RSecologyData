#' @title load all raster files stored in the RSecologyData package
#' 
#' @description All files are spatial raster sets (bricks or single raster)
#' @keywords raster
#' @details the files are
#' lsatp224r63_2005: Landsat ... (date, 2005; path 224 row 63, projection UTM north WGS84)
#' @export
#' @seealso load_vector()
#' @examples
#' load_raster()
#' plotRGB(lsat224r63_2005,1,2,3,stretch="lin")
#' plot(pa,add=T)
#' plot(abspres_poi,col="yellow",add=T)
#' @docType data
#' @name load_raster
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
    
