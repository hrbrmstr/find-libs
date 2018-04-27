# find-libs
Find all `library()` calls in R files in a directory tree

## Example

```r
find_libraries_used("~/projects")
##  [1] "bomrang"      "cdcfluview"   "circlepackeR" "countrycode"  "curl"         "data.table"   "data.tree"    "dplyr"       
##  [9] "extrafont"    "fishpals"     "forcats"      "ggalt"        "ggiraph"      "ggmap"        "ggplot2"      "ggridges"    
## [17] "ggTimeSeries" "gh"           "grid"         "gridExtra"    "gridSVG"      "gutenbergr"   "here"         "hrbrthemes"  
## [25] "htmltools"    "httr"         "jericho"      "jsonlite"     "knitr"        "lubridate"    "magick"       "mapproj"     
## [33] "maptools"     "metis"        "ndjson"       "neiss"        "pbapply"      "plotly"       "pressur"      "processx"    
## [41] "rappalyzer"   "raster"       "RColorBrewer" "rgdal"        "rgeolocate"   "rgeos"        "robotstxt"    "rprojroot"   
## [49] "rsvg"         "rtweet"       "rvest"        "semver"       "sergeant"     "shiny"        "stackr"       "statebins"   
## [57] "stringi"      "sugrrants"    "svglite"      "testthat"     "tidytext"     "tidyverse"    "tokenizers"   "treemap"     
## [65] "urltools"     "viridis"      "warrc"        "xml2" 
```
