+++
# Hero widget.
widget = "hero"
active = true
date = 2018-04-16

title = "PhD in environmental physics"

# Order that this section will appear in.
weight = 3

# Overlay a color or image (optional).
#   Deactivate an option by commenting out the line, prefixing it with `#`.
[header]
  overlay_color = "#666"  # An HTML color value.
  overlay_img = "headers/bubbles-wide.jpg"  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.5  # Darken the image. Value in range 0-1.

# Call to action button (optional).
#   Activate the button by specifying a URL and button label below.
#   Deactivate by commenting out parameters, prefixing lines with `#`.
# [cta]
#   url = "./post/getting-started/"
#   label = '<i class="fa fa-download"></i> Install Now'
+++

Welcome to my personal website, where you can find informations about my biography, my current position, my present and past work, my scientific publications, and my contact. If you have any question, feel free to call me or to send me an email ! :deciduous_tree:
<br><br>
<iframe style="display: inline-block;" src="https://ghbtns.com/github-btn.html?user=VEZY&type=follow&count=true&size=large" scrolling="0" width="158px" height="30px" frameborder="0"></iframe>

<script type="text/javascript">
  (function defer() {
    if (window.jQuery) {
      jQuery(document).ready(function(){
        GetLatestReleaseInfo();
      });
    } else {
      setTimeout(function() { defer() }, 50);
    }
  })();  
  function GetLatestReleaseInfo() {
    $.getJSON('https://api.github.com/repos/gcushen/hugo-academic/tags').done(function (json) {
      let release = json[0];
      // let downloadURL = release.zipball_url;
      $('#academic-release').text('Latest release ' + release.name);  
    });    
}  
</script>
