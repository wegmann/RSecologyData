#' @title load all vector files stored in the RSecologyData package
#' 
#' @description All files are spatial vector data sets (Polygons, Lines or Points) providing information 
#' such as border of protected areas, field sampling sites or roads. 
#' @keywords shape vector, spatial data frames
#' @details the files are
#' 
#' "lsat_extent_LL": landsat extent for path 224 r63 (geographic coordinates lat long)
#' 
#' "lsat_extent": landsat extent for path 224 r63 (projection UTM north WGS84)
#'
#' "study_area": rectangle of the study area (projection UTM north WGS84)
#'   
#' "pa": protected areas of the area covered by lsat_extent (projection UTM north WGS84)
#' 
#' "roads": roads of the area covered by lsat_extent (projection UTM north WGS84)
#' 
#' "training_vector_data": polygons with land cover classes for land cover classification (projection UTM north WGS84)
#' 
#' "change_classes": polygons with land cover change classes for change detection (projection UTM north WGS84)
#' 
#' "abspres_poi": point data with absence and presence data (0-1) (projection UTM north WGS84)
#' 
#' "pres_poi": point data with presence data only (projection UTM north WGS84)
#' 
#' "count_poi": point data with count data (whole numbers) (projection UTM north WGS84)
#' 
#' "trend_poi": point data with trend data (negative and positive values) (projection UTM north WGS84)
#' 
#' @export
#' @seealso load_raster()
#' @examples
#' load_vector()
#' ## plotting the data in geographic coordinates
#' plot(lsat_extent_LL)
#' 
#' ## plotting the data in UTM north projection
#' plot(pa)
#' plot(abspres_poi,col="yellow",add=T)
#' @docType data
#' @name load_vector
#' @references
#' \href{http://remote-sensing-biodiversity.org/rsecology-book}.
#' @author Martin Wegmann

        load_vector <- function(overwrite=TRUE){
                              x <- c("lsat_extent_LL","lsat_extent","roads","pa","abspres_poi","pres_poi","count_poi","trend_poi","study_area","movement_vector_w_time","training_vector_data","change_classes")  
                              for ( i in x) {
                              if(exists(i)) warning('object "', i, '" already exists',call.=FALSE)
                              else(
                              assign(i,readRDS(system.file(paste("extdata/",i,".rds",sep=""),package="RSecologyData")),envir=.GlobalEnv)
                              )
                              }
            }
    
        load_vector_MODIS <- function(overwrite=TRUE){
          x <- c("MODIS_tiles_sinusoidal","MODIS_country_sinusoidal","MODIS_bnd_sinusoidal")  
          for ( i in x) {
            if(exists(i)) warning('object "', i, '" already exists',call.=FALSE)
            else(
              assign(i,readRDS(system.file(paste("extdata/",i,".rds",sep=""),package="RSecologyData")),envir=.GlobalEnv)
            )
          }
        }


