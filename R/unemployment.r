#' @title United States Labor Force Data by County, Annual Averages 1990-2017
#'
#' @description Labor force data provided by the US Bureau of Labor and Statistics.
#' From their website (at \url{https://www.bls.gov/lau/}):
#'
#' The Local Area Unemployment Statistics (LAUS) program
#' produces monthly and annual employment, unemployment, and labor
#' force data for Census regions and divisions, States, counties,
#' metropolitan areas, and many cities, by place of residence.
#'
#' @details
#' The dataset contains the following variables:
#'
#' \itemize{
#'   \item \code{LAUS.code}: LAUS Code (\emph{character})
#'   \item \code{STATEFP}: State FIPS Code (\emph{character})
#'   \item \code{COUNTYFP}: County FIPS Code (\emph{character})
#'   \item \code{County.Name}: County Name/State Abbr. (\emph{character})
#'   \item \code{Year}: Year (\emph{integer})
#'   \item \code{Labor.Force}: Labor Force (\emph{integer})
#'   \item \code{Employed}: Employed (\emph{integer})
#'   \item \code{Unemp.Lvl}: Unemployment Level (\emph{integer})
#'   \item \code{Unemp.Rate}: Unemployment Rate (\emph{numeric})
#' }
#'
#' @docType data
#' @keywords datasets
#' @name unemployment
#' @usage data(unemployment)
#' @source \url{https://www.bls.gov/lau/tables.htm}
#' @format A data frame with 90088 rows and 9 variables
NULL
