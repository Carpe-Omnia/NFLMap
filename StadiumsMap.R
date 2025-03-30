library(leaflet)
stadiums <- data.frame(
  lat = c(39.9014, 40.8135, 42.7676, 39.278088, 44.5013, 32.7480, 33.9535, 38.9081),
  lng = c(-74.0060, -74.0745, -78.7439, -76.623322, -88.0622, -97.0934, -118.3390, -76.8640),
  popup=c("Lincoln Financial Center", "Metlife Stadium", "Orchard Park", 
          "M&T Bank Arena", "Lambeau Field", "AT&T Stadium", "SoFi Stadium", "Northwest Stadium")
)
myMap <- leaflet(data = stadiums) %>%
  addTiles() %>%
  addMarkers(
    lat = ~lat,
    lng = ~lng,
    popup = ~popup
  )
myMap