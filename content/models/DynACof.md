+++
# Date this page was created.
date = "2018-04-17"

# Project title.
title = "DynACof"

# Project summary to display on homepage.
summary = "The Dynamic Agroforestry Coffee Crop Model "

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = "DynACof.png"

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["DynACof","R","PBM"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Does the project detail page use math formatting?
math = false

# Optional featured image (relative to `static/img/` folder).
[header]
image = "DynACof_Diagram.png"
caption = ""
+++

## Overview
--------

The DynACof process-based model computes plot-scale Net Primary Productivity, carbon allocation, growth, yield, energy, and water balance of coffee plantations according to management, while accounting for spatial effects using metamodels from the 3D process-based MAESPA. The model also uses coffee bud and fruit cohorts for reproductive development to better represent fruit carbon demand distribution along the year.

## Infos
------------
Informations about installation, version release, source code and news are available on the [GitHub repository](https://github.com/VEZY/DynACof). This source is always the most up-to-date.
Informations about model description (equations, state of the art, history) can be found on the third chapter of the [thesis manuscript](https://www.researchgate.net/publication/323469257_Simulation_de_pratiques_de_gestion_alternatives_pour_l'adaptation_des_plantations_perennes_aux_changements_globaux) (Vezy, 2017).
NB : the manuscript is partly in French, but this chapter is in English.

## Installation
------------

The development version from [GitHub](https://github.com/) can be installed with:

``` r
# install.packages("devtools")
devtools::install_github("VEZY/DynACof")
```

Or using the lightweight [remotes](https://github.com/r-lib/remotes#readme) package:

``` r
# install.packages("remotes")
remotes::install_github("VEZY/DynACof")
```

For the moment, there is no [CRAN](https://CRAN.R-project.org) released version of DynACof, but we work on that. You will soon be able to run this command to install the package:

``` r
install.packages("DynACof")
```

## Example
-------

This is a basic example using all defaults (parameters and meteorology) over 2 years :

``` r
rm(list = ls())
library("DynACof")
Sys.setenv(TZ="UTC")
DynACof(Period= as.POSIXct(c("1979-01-01", "1980-12-31")))
```

To use your own data, you have to tell DynACof where to find it using `Inpath` parameter, and what are the files names with the `FileName` parameter list:

``` r
rm(list = ls())
library("DynACof")
Sys.setenv(TZ="UTC")
DynACof(WriteIt = T, Period= as.POSIXct(c("1979-01-01", "1980-12-31")),Inpath = "1-Input/Aquiares/",Simulation_Name = "Test1",FileName = list(Site = "1-Site.R", Meteo ="2-Meteorology.txt", Soil = "3-Soil.R",Coffee = "4-Coffee.R", Tree = NULL))
```

Note that the Meteo file can be of any regular format because the model uses the `data.table::fread` function internally.

Enjoy !!

## Repository status
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip) [![Travis build status](https://travis-ci.com/VEZY/DynACof.svg?token=oehDDxBpmrzeWX8AdyPo&branch=master)](https://travis-ci.com/VEZY/DynACof) [![Join the chat at https://gitter.im/DynACof/Lobby\#](https://badges.gitter.im/DynACof/Lobby.svg?token=1d2e733532f5122f05de&branch=master)](https://gitter.im/DynACof/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Acknowledgments
---------------

The DynACof model was mainly developed thanks to the [MACCAC project](../../project/maccac/index.html), which was funded by the french ANR (Agence Nationale de la Recherche). The authors were funded by [CIRAD](https://www.cirad.fr/en) and [INRA](http://www.inra.fr/en/). The authors are grateful for the support of [CATIE](https://www.catie.ac.cr/en/) for the long-term coffee agroforestry trial, the SOERE F-ORE-T which is supported annually by Ecofor, Allenvi and the French national research infrastructure [ANAEE-F](http://www.anaee-france.fr/fr/); the CIRAD-IRD-SAFSE project (France) and the PCP platform of CATIE. CoffeeFlux observatory was supported and managed by CIRAD researchers. We are grateful to the staff from Costa-Rica, in particular Alvaro Barquero, Alejandra Barquero, Jenny Barquero, Alexis Perez, Guillermo Ramirez, Rafael Acuna, Manuel Jara, Alonso Barquero for their technical and field support.

## References
---------------

Vezy, R., Simulation de pratiques de gestion alternatives pour l’adaptation des plantations pérennes aux changements globaux, in École doctorale science de l'environnement, spécialité physique de l'environnement. 2017, UNIVERSITÉ DE BORDEAUX: Bordeaux. p. 270. [Link](https://www.researchgate.net/publication/323469257_Simulation_de_pratiques_de_gestion_alternatives_pour_l'adaptation_des_plantations_perennes_aux_changements_globaux)


------------------------------------------------------------------------

<sub>The DynACof logo was made using <a href="http://logomakr.com" title="Logo Makr">LogoMakr.com</a> </sub>
