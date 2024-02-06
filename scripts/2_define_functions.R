#define function for scaling raster from 1 to 255
scl<-function(x, low=1, high=254){
  y<-x
  values(x)<-as.integer(values(x))
  a<-min(values(x), na.rm=T)
  b<-max(values(x), na.rm=T)
  values(y)<-low+(high-low)*(values(x)-a)/(b-a) 
  params<-data.frame(a=a, b=b)
  return(list(x=x, y=y, params=params))
}
