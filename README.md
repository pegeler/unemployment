# unemployment
United States Local Area Unemployment Statistics (LAUS), Annual Averages 1990-2017

## Installation

You must have [`devtools`](https://cran.r-project.org/web/packages/devtools/index.html) installed in order to download and install this package. To do so, type the following into your R console:

    install.packages("devtools")

After you have `devtools`, type the following in the R console to download and install this package:

    devtools::install_github("pegeler/unemployment")

## Description

Labor force data provided by the US Bureau of Labor and Statistics. From their website (at <https://www.bls.gov/lau/>):

> The Local Area Unemployment Statistics (LAUS) program produces monthly and annual employment, unemployment, and labor force data for Census regions and divisions, States, counties, metropolitan areas, and many cities, by place of residence.

## Usage

    data(unemployment)

## Format

A `data.frame` with 90088 rows and 9 variables

## Details

The dataset contains the following variables:

- `LAUS.code`: LAUS Code (*character*)
- `STATEFP`: State FIPS Code (*character*)
- `COUNTYFP`: County FIPS Code (*character*)
- `County.Name`: County Name/State Abbr. (*character*)
- `Year`: Year (*integer*)
- `Labor.Force`: Labor Force (*integer*)
- `Employed`: Employed (*integer*)
- `Unemp.Lvl`: Unemployment Level (*integer*)
- `Unemp.Rate`: Unemployment Rate (*numeric*)

## Source

<https://www.bls.gov/lau/tables.htm>
