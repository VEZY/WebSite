+++
# Projects widget.
widget = "projects"
active = true
date = "2018-04-17T15:10:00"

title = "Models"
subtitle = "The models I use or develop"

# Order that this section will appear in.
weight = 60

# Content.
# Display content from the following folder.
# For example, `folder = "project"` displays content from `content/project/`.
folder = "models"

# View.
# Customize how projects are displayed.
# Legend: 0 = list, 1 = cards.
view = 1

# Filter toolbar.

# Default filter index (e.g. 0 corresponds to the first `[[filter]]` instance below).
filter_default = 0

# Add or remove as many filters (`[[filter]]` instances) as you like.
# Use "*" tag to show all projects or an existing tag prefixed with "." to filter by specific tag.
# To remove toolbar, delete/comment all instances of `[[filter]]` below.
[[filter]]
  name = "All"
  tag = "*"

[[filter]]
  name = "R"
  tag = ".R"

  [[filter]]
    name = "FORTRAN"
    tag = ".FORTRAN"

  [[filter]]
    name = "PBM"
    tag = ".PBM"

  [[filter]]
    name = "Functional"
    tag = ".Functional"

[[filter]]
  name = "Other"
  tag = ".demo"

+++
