+++
title = "MAESPA model modification to simulate stands with complex canopies structure"
date = "2018-04-17"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Vezy Rémi","Christina Mathias","Roupsard Olivier","Nouvellon Yann","Duursma Remko","Medlyn Belinda","Soma Maxime","Charbonnier Fabien","Blitz-Frayret Céline","Stape José-Luiz","Laclau Jean-Paul","de Melo Virginio Filho Elias","Bonnefond Jean-Marc","Rapidel Bruno","Do Frédéric C.","Rocheteau Alain","Picart Delphine","Borgonovo Carlos","Loustau Denis","le Maire Guerric"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference proceedings
# 2 = Journal
# 3 = Work in progress
# 4 = Technical report
# 5 = Book
# 6 = Book chapter
publication_types = ["2"]

# Publication name and optional abbreviated version.
publication = "In *Agricultural and Forest Meteorology (AFM)*."
publication_short = "In *AFM*"

# Abstract and optional shortened version.
abstract = "Evapotranspiration and energy partitioning are complex to estimate because they result from the interaction of many different processes, especially in multi-species and multi-strata ecosystems. We used MAESPA model, a mechanistic, 3D model of coupled radiative transfer, photosynthesis, and balances of energy and water, to simulate the partitioning of energy and evapotranspiration in homogeneous tree plantations, as well as in heterogeneous multi-species, multi-strata agroforests with diverse spatial scales and management schemes. The MAESPA model was modified to add (1) calculation of foliage surface water evaporation at the voxel scale; (2) computation of an average within-canopy air temperature and vapour pressure; and (3) use of (1) and (2) in iterative calculations of soil and leaf temperatures to close ecosystem-level energy balances. We tested MAESPA model simulations on a simple monospecific Eucalyptus stand in Brazil, and also in two complex, heterogeneous Coffea agroforests in Costa Rica. MAESPA satisfactorily simulated the daily and seasonal dynamics of net radiation (RMSE = 29.6 and 28.4 W m-2; R2 = 0.99 and 0.99 for Eucalyptus and Coffea sites respectively) and its partitioning between latent-(RMSE = 68.1 and 37.2 W m-2; R2 = 0.87 and 0.85) and sensible-energy (RMSE = 54.6 and 45.8 W m-2; R2 = 0.57 and 0.88) over a one-year simulation at half-hourly time-step. After validation, We use the modified MAESPA to calculate partitioning of evapotranspiration and energy between plants and soil in the above-mentioned agro-ecosystems. In the Eucalyptus plantation, 95% of the outgoing energy was emitted as latent-heat, while the Coffea agroforestry system’s partitioning between sensible and latent-heat fluxes was roughly equal. We conclude that MAESPA process-based model has an appropriate balance of detail, accuracy, and computational speed to be applicable to simple or complex forest ecosystems and at different scales for energy and evapotranspiration partitioning."
abstract_short = "The MAESPA model was modified to better simulate forest stands with complex 3D structure, such as agroforestry systems. The model was then modified to add a computation of the foliage surface water evaporation at the voxel scale; (2) computation of an average within-canopy air temperature and vapour pressure; and (3) use of (1) and (2) in iterative calculations of soil and leaf temperatures to close ecosystem-level energy balances. These modifications allowed to better simulate both simple (monospecific *Eucalyptus urograndis*) and complex agroforests (*Coffea arabica* under *Erythrina poeppigiana*)."

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = true

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
projects = ["MACACC"]

# Links (optional).
url_pdf = "https://www.sciencedirect.com/science/article/pii/S016819231830042X"
url_preprint = "https://www.researchgate.net/publication/323398728_Measuring_and_modelling_energy_partitioning_in_canopies_of_varying_complexity_using_MAESPA_model"
url_code = "https://gitlab.com/VEZY/MAESPA_Validation"
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = "https://www.researchgate.net/publication/315912505_Modelling_plant_to_plot_energy_balance_after_improving_the_MAESPA_model_in_simple_to_complex_forests_and_agroforests"
url_source = ""

# Does the content use math formatting?
math = true

# Does the content use source code highlighting?
highlight = true

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = "MAESPA.png"
caption = "Detailed MAESPA model workflow"

+++
