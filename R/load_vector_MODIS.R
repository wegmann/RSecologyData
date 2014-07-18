#' @title load all MODIS related vector files stored in the RSecologyData package
#' 
#' @description Vector files related to MODIS e.g. the MODIS h-v grid. 
#' @keywords shape vector, spatial data frames, MODIS
#' @details The vector files are related to MODIS and provide information in sinusoidal projection on country boundaries or the MODIS grid. 
#' All files are spatial vector data sets (Polygons, Lines or Points). 
#' Data compiled by Markus Neteler (FMACH) using GRASS (CC-BY-SA: http://gis.cri.fmach.it/modis-sinusoidal-gis-files/)
#' 
#' "MODIS_tiles_sinu": MODIS tiles (h-v) in sinusoidal projection
#' 
#' "MODIS_bnd_sinu": country boundaries in sinusoidal projection
#' 
#' "MODIS_world_sinu": the borders of the map in sinusoidal projection
#'
#' @export
#' @seealso load_vector(), load_raster(), load_raster_MODIS()
#' @examples
#' load_vector_MODIS()
#' ## plotting the world and country boundaries in sinusoidal projection
#' plot(MODIS_world_sinu)
#' plot(MODIS_bnd_sinu, add=T)
#' 
#' ## adding the MODIS grid
#' plot(MODIS_tiles_sinu,add=T)
#' 
#' @docType data
#' @name load_vector
#' @references
#' \href{http://remote-sensing-biodiversity.org/rsecology-book}.
#' @author Martin Wegmann


        load_vector_MODIS <- function(overwrite=TRUE){
          x <- c("MODIS_tiles_sinu","MODIS_world_sinu","MODIS_bnd_sinu")  
          for ( i in x) {
            if(exists(i)) warning('object "', i, '" already exists',call.=FALSE)
            else(
              assign(i,readRDS(system.file(paste("extdata/",i,".rds",sep=""),package="RSecologyData")),envir=.GlobalEnv)
            )
          }
        }


