# dataVizPipeline

#### Author: Rafidison Santatra Rakotondrasoa

#### Description

This repository serves as a reproducible pipeline utilizing both {renv} and {targets} libraries to facilitate testing of the {dataVizPkg} package.
It provides a streamlined and efficient method for testing the {dataVizPkg} package.
With this, users can easily reproduce results, make changes and optimize the pipeline for their specific needs.

#### What is {dataVizPkg} package

It is an r package that will allow us to visualize a dataset. The available plots are histogram, pie chart and density plot. You can use those plots to visualize 
any column in your dataset. It also provides a single function to create and visualize every columns at once.

#### Installation:

Run on your terminal the following command to clone the repository:
$`git clone git@github.com:Santatr/dataVizPipeline.git`

Open the project in rstudio or other IDE that you use;

Run on your console in rstudio the following command to install all the required libraries:
>`console renv::restore()`

Run on your console the following command to execute the pipeline:
>`targets::tar_make()`

#### Instructions on how to use it:

To visualize the data.frane provided by {dataVizPkg} package
>`print(dataVizPkg::data)`
OR
>`targets::tar_read(insurance_data)`

To load the data.frame  
>`insurance_data <- dataVizPkg::data`
OR
>`targets::tar_load(insurance_data)`

To create and show plots for every columns in the data.frame `insurance_data
>`dataVizPkg::make_report(insurance_data)`
OR
>`targets::tar_read(insurance_data_report)`

*NB*: if you use the rstudio console, it will not show all the plots that have been created, instead, it will show only the last plot. To view all plots, I suggest you to use rmarkdown or quarto for a better vizualization.

To plot a piechart plot for the column `region`
>`dataVizPkg::make_piechart_plot(insurance_data,"region")`
OR
>`targets::tar_read(region_piechart_plot)`

To plot a density plot for the column `charges`
>`dataVizPkg::make_density_plot(insurance_data,"charges")`
OR
>`targets::tar_read(charges_density_plot)`

To plot an histogram plot for the column `age`
>`dataVizPkg::make_histogram_plot(insurance_data,"age")`
OR
>`targets::tar_read(age_histogram_plot)`


To count the unique elements in the column `age` in the `insurance_data`data.frame
>`print(dataVizPkg::unique_count(insurance_data,"age"))`
OR
>`targets::tar_read(age_count)`
