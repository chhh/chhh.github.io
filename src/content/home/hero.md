+++
# Hero widget.
widget = "hero"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 21  # Order that this section will appear.

title = "BatMass"

# Hero image (optional). Enter filename of an image in the `static/img/` folder.
hero_media = "batmass_logo.png"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "navy"
  
  # Background gradient.
  #gradient_start = "#4bb4e3"
  #gradient_end = "#2b94c3"
  
  # Background image.
  image = "batmass-map2d.jpg"  # Name of image in `static/img/`.
  #image = "about-batmass/comparison-6-runs-1-blank-02-zoom-marked.png"  # Name of image in `static/img/`.
  image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.
  # image_size = "cover"  #  Options are `cover` (default), `contain`, or `actual` size.
  # image_position = "center"  # Options include `left`, `center` (default), or `right`.
  # image_parallax = true  # Use a fun parallax-like fixed background effect? true/false
  
  # Text color (true=light or false=dark).
  text_color_light = true

# Call to action links (optional).
#   Display link(s) by specifying a URL and label below. Icon is optional for `[cta]`.
#   Remove a link/note by deleting a cta/note block.
[cta]
  url = "https://batmass.org"
  label = "Visit website"
  icon_pack = "fas"
  icon = "external-link-alt"
  
[cta_alt]
  url = "https://github.com/chhh/batmass/releases/latest"
  label = "Download"
+++

LC-MS data visualization and exploration framework. View spectra, extracted ion chromatograms 
and 2D ion maps of LC-MS experiments. Synchronized viewers. Visualize DIA experiments.
Overlay MS/MS events, peptide identifications or custom data (via delimited text files) over
a 2D map. :rocket:
<!-- <br/>
<small><a id="academic-release" href="https://github.com/chhh/batmass/releases/latest">Latest release</a></small>
<br/><br/> -->
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
