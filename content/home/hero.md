+++
# Hero widget.
widget = "hero"
active = true
date = 2017-10-15

title = "BatMass"

# Order that this section will appear in.
weight = 3

# Overlay a color or image (optional).
#   Deactivate an option by commenting out the line, prefixing it with `#`.
[header]
  overlay_color = "#666"  # An HTML color value.
  overlay_img = "batmass-map2d.jpg"  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.5  # Darken the image. Value in range 0-1.

# Call to action button (optional).
#   Activate the button by specifying a URL and button label below.
#   Deactivate by commenting out parameters, prefixing lines with `#`.
[cta]
  url = "https://github.com/chhh/batmass/releases/latest"
  label = '<i class="fa fa-download"></i> Download'
+++

A framework for LC-MS data visualization and exploration. Can show single spectra, extracted ion chromatograms and 2D ion maps of LC-MS experiments. Supports overlays over a 2D map of locations of MS-MS spectra, identifications via pepXML or mzId files or custom data via delimited text files. :rocket:
<br>
<small><a id="academic-release" href="https://github.com/chhh/batmass/releases/latest">Latest release</a></small>
<br><br>
<iframe style="display: inline-block;" src="https://ghbtns.com/github-btn.html?user=chhh&amp;repo=batmass&amp;type=star&amp;count=true&amp;size=large" scrolling="0" width="160px" height="30px" frameborder="0"></iframe>
<iframe style="display: inline-block;" src="https://ghbtns.com/github-btn.html?user=chhh&amp;repo=batmass&amp;type=fork&amp;count=true&amp;size=large" scrolling="0" width="158px" height="30px" frameborder="0"></iframe>

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
    $.getJSON('https://api.github.com/repos/chhh/batmass/tags').done(function (json) {
      let release = json[0];
      // let downloadURL = release.zipball_url;
      $('#academic-release').text('Latest release ' + release.name);  
    });    
}  
</script>
