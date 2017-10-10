# unemployment
United States Local Area Unemployment Statistics (LAUS) 2015

## Description

Labor force data provided by the US Bureau of Labor and Statistics. From their website (at <https://www.bls.gov/lau/>):

> The Local Area Unemployment Statistics (LAUS) program produces monthly and annual employment, unemployment, and labor force data for Census regions and divisions, States, counties, metropolitan areas, and many cities, by place of residence.

## Usage

    data(unemployment)

## Format

A `data.frame` with 3219 rows and 9 variables

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

<https://www.bls.gov/lau/laucnty15.txt>

## Future work

At some point, I would like to read in the data from 1990 to present. The files are available at the BLS website here <https://www.bls.gov/lau/tables.htm>.
