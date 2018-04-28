for (i in substr(1990:2017, 3,4)) {

  download.file(
    paste0(
      "http://www.bls.gov/lau/laucnty",
      i,
      ".txt"
    ),
    paste0(
      "~/tmp/unemployment_files/",
      "unemployment",
      i,
      ".txt"
    )
  )
}

system(command = "grep 'N.A.' ~/tmp/unemployment_files/*.txt")

unemployment[!complete.cases(unemployment),]
