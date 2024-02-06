#raster
index<-rast(index.tif)

##polygons
aoi<-suppressWarnings(vect(aoi.shape))

#define projections
prj<-"epsg:3006"
crs(index)<-prj
crs(aoi)<-prj

#give feedback
print('Data have been imported')

