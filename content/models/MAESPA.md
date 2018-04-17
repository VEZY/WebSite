+++
# Date this page was created.
date = "2018-04-17"

# Project title.
title = "MAESPA"

# Project summary to display on homepage.
summary = "A soil-plant-atmosphere model based on MAESTRA and SPA"

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = "MAESPA.png"

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["MAESPA","FORTRAN","PBM"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Does the project detail page use math formatting?
math = false

# Optional featured image (relative to `static/img/` folder).
[header]
image = "MAESPA.png"
caption = ""
+++

## Brief history of the model
Maespa is a model of forest canopy radiation absorption, photosynthesis and water balance. The model has a long history, going back to the work of John Norman and Paul Jarvis in the 1970's and 80's. Ying -Ping Wang improved and tested the model for his PhD thesis (then called MAESTRO) (Wang & Jarvis 1990). In 1997 Belinda Medlyn obtained a version of the code from Ying-Ping Wang and revised the model, with the objectives of (i) modularising the code to make the program easier to understand and modify; and (ii) incorporating standard formulations of leaf gas exchange models (see Medlyn 2004 for a full history).

In 2008, Remko Duursma and Belinda Medlyn started expanding Maestra by including water balance and plant hydraulics routines, largely based on the SPA model by Mat Williams (Duursma and Medlyn 2012). The two models were independent for some time, but since 2013 they use the same code base. The diagram below shows how Maespa incorporates Maestra. It is straightforward to run the model 'in Maestra mode', which is consistent with the legacy Maestra model.

In 2018, Vezy et al. (see research article for full author list) modified the model to include several changes relative to the official [master](https://bitbucket.org/remkoduursma/maespa/branch/master) branch of the model:
* voxel-scale leaf evaporation
* Computation of canopy air temperature and vapor pressure.
* Iterations on leaf temperature until convergence
* Aerodynamic conductance computation at plot scale (used for soil + canopy air temperature and vapor pressure)
* Allow two wind extinction profile if ZHT (measurement height) is below canopy height (mainly used in agroforestry with measurements below the shade trees)
* Bug fixes on slope computation

## Informations and Technical manual
* All informations about MAESPA can be found in the [MAESPA website](http://maespa.github.io)
* Further informations on how to modify the input files to adapt them to the version we developed on the wiki from the unofficial [Gitlab repository](https://gitlab.com/VEZY/MAESPA/wikis/home)
* The [exact version](https://gitlab.com/VEZY/MAESPA) used in Vezy et al. (2018). Carefull, this version is a development version and is not in full agreement with the MAESPA development guidelines (e.g. modified input call for distributed computation). The official, clean, deployed version is the one from repository.

## References
Vezy, R., et al., Measuring and modelling energy partitioning in canopies of varying complexity using MAESPA model. Agricultural and Forest Meteorology, 2018. 253-254: p. 203-217. [Link](https://www.sciencedirect.com/science/article/pii/S016819231830042X).
