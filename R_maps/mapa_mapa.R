library(leaflet.extras)
library(magrittr)
library(mapview)
library(leaflet)
library(plainview)


m1 <- mapview()
m3 <- m1@map %>%  fitBounds(-107.5750000000000021515,19.5750000000000003915,-104.2583333333333354185,21.1583333333333337565) %>% 
addTiles(urlTemplate = '//gis.ngdc.noaa.gov/arcgis/rest/services/web_mercator/etopo1_hillshade/MapServer/tile/{z}/{y}/{x}')  %>%  #use NOAA chart tiles here
flyToBounds(-107.5750000000000021515,19.5750000000000003915,-104.2583333333333354185,21.1583333333333337565) %>% 
addProviderTiles('Esri.WorldImagery', options = providerTileOptions()) 
   
m3 %>%  flyToBounds(-107.5750000000000021515,19.5750000000000003915,-104.2583333333333354185,21.1583333333333337565)

mapshot(m3, file = "breweries.png")


 
 m2 <- leaflet()
 m2 %>%  addTiles(urlTemplate = '//gis.ngdc.noaa.gov/arcgis/rest/services/web_mercator/etopo1_hillshade/MapServer/tile/{z}/{y}/{x}') %>% 
    flyToBounds(-107.5750000000000021515,19.5750000000000003915,-104.2583333333333354185,21.1583333333333337565)
