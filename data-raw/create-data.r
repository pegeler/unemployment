# Unemployment data from BLS --------------------------------------------------

get_data <- function (file_url) {

  stopifnot(require(magrittr))

  url_con <- url(file_url)

  ttl_length <- length(readLines(url_con))

  unemployment <- read.fwf(
    url_con,
    skip = 6,
    n = ttl_length - 9,
    widths = diff(c(0,16,21,29,80,86,100,115,125,132)+1),
    na.strings = "N.A.",
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

  unemployment[which(sapply(unemployment, class) == "character")] %<>%
    sapply(trimws)

  unemployment[,6] %<>% gsub(",","",.) %>% as.integer
  unemployment[,7] %<>% gsub(",","",.) %>% as.integer
  unemployment[,8] %<>% gsub(",","",.) %>% as.integer

  return(unemployment)

}


file_urls <- paste0(
  "http://www.bls.gov/lau/laucnty",
  substr(1990:2017, 3,4),
  ".txt"
  )

unemployment_list <- lapply(file_urls, get_data)

unemployment <- data.table::rbindlist(unemployment_list)

save(list = "unemployment", file = "data/unemployment.rda", compress = "xz")


