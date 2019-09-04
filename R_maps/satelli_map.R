library(leaflet)
library(mapview)
library(leaflet.extras)

 m2 <- leaflet() %>%  addProviderTiles('Esri.WorldImagery', options = providerTileOptions())  %>% 
    flyToBounds(-107.575,19.575,-104.258,21.158)  %>%  
    fitBounds(-107.575,19.575,-104.258,21.158)
 m2