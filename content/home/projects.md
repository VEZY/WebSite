+++
# Projects widget.
widget = "projects"
active = true
date = "2019-11-10T13:33:00"

title = "Projects"
subtitle = "The different research projects I work(ed) on"

# Order that this section will appear in.
weight = 50

# Content.
# Display content from the following folder.
# For example, `folder = "project"` displays content from `content/project/`.
folder = "project"

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
    name = "Perennial plantations"
    tag = ".perennial"

  [[filter]]
    name = "FSPM"
    tag = ".FSPM"

  [[filter]]
    name = "STICS"
    tag = ".STICS"

  [[filter]]
    name = "MAESPA"
    tag = ".MAESPA"

  [[filter]]
    name = "DynACof"
    tag = ".DynACof"
    
  [[filter]]
    name = "Mixtures"
    tag = ".mixture"
+++
