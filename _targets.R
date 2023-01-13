library(targets)
library(dataVizPkg)
library(dplyr)
library(ggplot2)
library(readr)
source("functions.R")

list(

  tar_target(
    insurance_data,
    get_data()
  ),

  tar_target(
    insurance_data_report,
    make_report(insurance_data)
  ),

  tar_target(
    charges_density_plot,
    make_density_plot(insurance_data,"charges")
  ),

  tar_target(
    region_piechart_plot,
    make_piechart_plot(insurance_data,"region")
  ),

  tar_target(
    age_histogram_plot,
    make_histogram_plot(insurance_data,"age")
  ),

  tar_target(
    age_count,
    unique_count(insurance_data,"age")
  )
)


