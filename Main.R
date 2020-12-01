

# Serve site
library(blogdown)
blogdown::serve_site()
blogdown::build_site()
# Update publications :
# Install the tool from command line:
# pip3 install -U academic

# Then update the .bib file at the root of the repo, and run:
# academic import --bibtex <path_to_your/publications.bib>

# For me:
# academic import --bibtex references_cor.bib
# library(scholar)
# library(lubridate)
# source("Functions.R")
# Update_Publications(id = "09R4xY0AAAAJ&hl")

