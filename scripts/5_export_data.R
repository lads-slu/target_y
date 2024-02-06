####ymaps####
#version: SEE version.r
#authors: Mats Söderström (SLU), Kristin Persson (SLU), Henrik Stadig (Entorp lantbruk)
#Before use: read terms.r
#########################

#create output folder if it does not exist
if(!dir.exists(out.folder))dir.create(out.folder)

#scale data from 1 to 255
scaled_yield<-scl(x=yield_class)
scaled_yield_continuous<-scl(x=yield)
instructions<-data.frame(how_to_scale="a+(b-a)*(tif-1)/(255-1)")

#test back transformation
#cc<-scl(x=scaled_yield$y, low=scaled_yield$params$a, high=scaled_yield$params$b)
#plot(cc)

#export yield raster
writeRaster(scaled_yield$y, 
            filename=file.path(out.folder, 'yield.tif'), 
            filetype='GTiff', 
            datatype='INT1U',
            NAflag=0,
            overwrite=T)

writeRaster(scaled_yield_continuous$y, 
            filename=file.path(out.folder, 'yield_continuous.tif'), 
            filetype='GTiff', 
            datatype='INT1U',
            NAflag=0,
            overwrite=T)

# writeRaster(index, 
#             filename=file.path(out.folder, 'index.tif'), 
#             filetype='GTiff', 
#             datatype='FLT4S',
#             NAflag=0,
#             overwrite=T)
# 
# writeRaster(yield, 
#             filename=file.path(out.folder, 'yield_continuous_unscaled.tif'), 
#             filetype='GTiff', 
#             datatype='INT2S',
#             NAflag=0,
#             overwrite=T)

#export scale parameters
write.table(scaled_yield$params, file = file.path(out.folder, 'params.txt'), row.names = F, sep='\t')
write.table(scaled_yield_continuous$params, file = file.path(out.folder, 'params_continuous.txt'), row.names = F, sep='\t')

#export scaling instructions
write.table(instructions, file = file.path(out.folder, 'how_to_scale.txt'), row.names = F, sep='\t')

#give feedback
print('Data have been exported')
print('Ready')
