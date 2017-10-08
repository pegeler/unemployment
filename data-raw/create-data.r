# Unemployment data from BLS --------------------------------------------------

unemployment = read.fwf(
  "http://www.bls.gov/lau/laucnty15.txt",
  skip = 6,
  n = 3219,
  widths = diff(c(0,16,21,29,80,86,100,115,125,132)+1),
  col.names = c(
    "LAUS.code",
    "STATEFP",
    "COUNTYFP",
    "County.Name",
    "Year",
    "Labor.Force",
    "Employed",
    "Unemp.Lvl",
    "Unemp.Rate"
  ),
  colClasses = c(
    "character",
    "character",
    "character",
    "character",
    "integer",
    "character",
    "character",
    "character",
    "numeric"
  )
)

library(magrittr)

unemployment[which(sapply(unemployment, class) == "character")] %<>%
  sapply(trimws)

unemployment[,6] %<>% gsub(",","",.) %>% as.integer
unemployment[,7] %<>% gsub(",","",.) %>% as.integer
unemployment[,8] %<>% gsub(",","",.) %>% as.integer

save(list = "unemployment",file = "data/unemployment.rda")


