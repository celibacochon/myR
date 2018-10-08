library(RCurl)
library(rjson)
url<-'http://dev.virtualearth.net/REST/v1/Locations?query=beijing&key=AirA4b5gcFpU7q3aXCCL7u9LtiCDrcEbaKSeKGhfK7DxIFBeuAzt1FcRBEG1itTv'
url_string <- URLencode(url)
g <- URLencode(url)
json<- readLines(url_string, warn=F)
geo <- fromJSON(substr(json,regexpr('\\(',json)+1,nchar(json)-1))

AirA4b5gcFpU7q3aXCCL7u9LtiCDrcEbaKSeKGhfK7DxIFBeuAzt1FcRBEG1itTv

geo$resourceSets[[1]]$resources[[3]]$geocodePoints[[1]]$coordinates

df<as.data.frame(c(0,0,0),row.names = c(add,lng,lat))

lnglist<-c()
latlist<-c()

for(i in address){
url<-paste0('http://dev.virtualearth.net/REST/v1/Locations?addressLine=',i,'&key=AirA4b5gcFpU7q3aXCCL7u9LtiCDrcEbaKSeKGhfK7DxIFBeuAzt1FcRBEG1itTv')
json<- readLines(url, warn=F)
geo <- fromJSON(json)
lng<-geo$resourceSets[[1]]$resources[[2]]$geocodePoints[[1]]$coordinates[1]
lat<-geo$resourceSets[[1]]$resources[[2]]$geocodePoints[[1]]$coordinates[2]
lnglist<-c(lnglist,lng)
latlist<-c(latlist,lat)
}


http://dev.virtualearth.net/REST/v1/Locations?CountryRegion=CN&locality=Somewhere&addressLine=100%20Main%20St.&key=BingMapsKey 

url<-paste0('http://dev.virtualearth.net/REST/v1/Locations?query=成都恒大曹家巷广场&key=AirA4b5gcFpU7q3aXCCL7u9LtiCDrcEbaKSeKGhfK7DxIFBeuAzt1FcRBEG1itTv')
json<- readLines(url, warn=F)
geo <- fromJSON(json)




