####ymaps####
#version: SEE version.r
#authors: Mats Söderström (SLU), Kristin Persson (SLU), Henrik Stadig (Entorp lantbruk)
#Before use: read terms.r
#########################

#import and set parameters
coeffs<-read.table(file='scripts\\model_coeffs.txt', header = T, sep = "\t")
sel<-coeffs$crop==crop & coeffs$cultivar==cultivar 
k<-coeffs[sel,'slope']
m<-coeffs[sel,'intercept']

#mask index raster by 15 m
aoi_small<-buffer(aoi, -15)
index<-mask(index, aoi_small)

index<-extend(x=index, y=aoi, fill=NA)

#mean filter for 3m*3m (fill out original extent)
index<-focal(index, w=matrix(data=1,nrow=3, ncol=3), mean, na.rm=T, pad=T)

#bilinear resampling to 10 m 
index<-disagg(x=index, fact=2, method='bilinear')

#crop and mask by original field boundary
index<-crop(index, aoi)
index<-mask(index, aoi)

#normalize index
index_n<- index/mean(values(index), na.rm=T)

#predict normalized yield
yield_n<-k*index_n+m 

#rescale yield
yield<-yield.mean*yield_n

#split in three classes
yield_class<-yield
q1<-as.numeric(quantile(values(yield), na.rm=T, c(0.25)))
q3<-as.numeric(quantile(values(yield), na.rm=T, c(0.75)))
yield_class[yield>q3]<-median(yield[yield>q3])
yield_class[yield>q1 & yield<=q3]<-median(yield[yield>q1 & yield<=q3])
yield_class[yield<=q1]<-median(yield[yield<=q1])

#give feedback
print('Computations are ready')

