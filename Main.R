

# Serve site
library(blogdown)
blogdown::serve_site()
blogdown::build_site()
# Update publications :
library(scholar)
library(lubridate)
source("Functions.R")
Update_Publications(id = "09R4xY0AAAAJ&hl")

