+++
# Date this page was created.
date = "2016-04-27"

# Project title.
title = "BatMass"

# Project summary to display on homepage.
summary = "A framework for LC-MS data visualization and exploration. View spectra, extracted ion chromatograms and 2D ion maps of LC-MS experiments. Synchronized viewers."

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = "batmass-map2d.jpg"

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["mass-spectrometry", "data-viz", "lc-ms"]

# Optional external URL for project (replaces project detail page).
external_link = "http://batmass.org"

# Does the project detail page use math formatting?
math = false

# Optional featured image (relative to `static/img/` folder).
[header]
image = "batmass-map2d-slice.png"
caption = "Synchronized 2D view of MS1 and MS2 data of a DIA LC-MS run. DIA isolation windows inferred automatically."

+++

BatMass is a mass-spectrometry data visualization tool, with the main focus on being fast and interactive while providing comprehensive visualizations without any parameter tweaking. It is written in Java and built on top of the [NetBeans Platform](https://netbeans.org/features/platform/all-docs.html).

### Referencing the work
If you use BatMass for your research or work, please cite the following paper:  
**[Avtonomov D.M. et al:
J. Proteome Res. June 16, 2016.
DOI: 10.1021/acs.jproteome.6b00021.](https://dx.doi.org/10.1021/acs.jproteome.6b00021)**


## Features
- Support for the open standard _mzML_ and _mzXML_ mass spectrometry data types. We are hoping to bring native vendor format support as well.

- Viewer synchronization. Link any number of viewers and zooming/panning will be synchronized across them. If you're viewing MS<sup>1</sup> data in one view and MS<sup>2</sup> data in the other the retention time is synchronized, while m/z is not. Open a detected LC/MS feature table or a peptide identification table, a double click on the row will open the corresponding spectrum, or bring you to the corresponding location in a 2D Map viewer.

- Data access layer. For the Java developers out there, the highly optimized mzML/mzXML parsers can be used in any standalone Java program as a simple _jar_ dependency. Parsing has been manually tuned to produce few garbage objects, thus minimizing time spent in GC (Garbage Collection), the speed is comparable to or better than in C/C++ implementations. The API for LC/MS data files gives access to most of the features supported by mzML/mzXML standards.

See the [getting started guide]({{< relref "getting-started/index.md" >}}) for instructions how to get
it up and running.

<!-- BatMass development is kindly supported by
<span style='margin-right:5px'>
  <a href='https://www.yourkit.com/java/profiler/index.jsp'>YourKit Java Profiler</a>
</span>
<img src='/images/yklogo-114x27.png' style='vertical-align:text-bottom'/>
and is built with
<span style='margin-right:5px'>
  <a href=''>Intellij IDEA</a>
</span>
<img src='/images/intellij-idea-40x40.png' style='vertical-align:text-bottom'/>
<span style='margin-right:5px'>
  ,
  <a href='https://netbeans.org/features/platform/all-docs.html'>NetBeans Platform</a>
</span>
<img src='/images/netbeans-logo-40x40.png'/>

<table >
  <tr>
    <td style='vertical-align:middle'><img src='/images/yklogo-114x27.png'/></td>
    <td style='vertical-align:middle'><a href='https://www.yourkit.com/java/profiler/index.jsp'>YourKit Java Profiler</a></td>
  </tr>
  <tr>
    <td style='vertical-align:middle'><img src='/images/intellij-idea-40x40.png'/></td>
    <td style='vertical-align:middle'><a href='https://www.jetbrains.com/idea/'>Intellij IDEA</a> IDE</td>
  </tr>
  <tr>
    <td style='vertical-align:middle align:right'><img src='/images/netbeans-logo-40x40.png'/></td>
    <td style='vertical-align:middle'><a href='https://netbeans.org/features/platform/all-docs.html'>NetBeans Platform</a> community</td>
  </tr>
</table> -->

<!-- <img src='/images/yklogo-114x27.png' style='vertical-align:middle'/><span style='vertical-align:middle'>&nbsp;<a href='https://www.yourkit.com/java/profiler/index.jsp'>YourKit Java Profiler</a></span>   -->

<!-- ![YourKit logo](/images/yklogo-114x27.png) [YourKit Java Profiler](https://www.yourkit.com/java/profiler/index.jsp)  
![IDEA logo](/images/intellij-idea-40x40.png) [Intellij IDEA](https://www.jetbrains.com/idea/) IDE from [JetBrains](https://www.jetbrains.com/)  
![NetBeans logo](/images/netbeans-logo-40x40.png) [NetBeans Platform](https://netbeans.org/features/platform/all-docs.html) community   -->



## Demo Video
Here's a short demo video of BatMass in action.

{{< youtube EY9wvd6ckb0>}}


## Some Examples
The layout of windows is free and customizable by dragging.
![Free window layoyt](/img/about-batmass/free-layout.png)

Compare multiple experiments at once. The bottom-middle run in this figure is a blank (no sample was injected), while the other 5 were runs with some sample. Amazing how much stuff comes from the background.
![Multi experiment comparison in Map2D](/img/about-batmass/comparison-6-runs-1-blank.png)

And here are the same runs but zoomed in to a small region of m/z and retentino time. Look at the color-marked regions. Let's just accept that zero-values are a thing, there is no need to try extracting noise to do gap-filling in data.
![Multi experiment comparison in Map2D zoomed](/img/about-batmass/comparison-6-runs-1-blank-02-zoom-marked.png)


## Contacts
**The author and maintainer of the project**  
Dmitry Avtonomov, Ph.D.  
University of Michigan, Ann Arbor  
Email: {{ config.params.name }}  

**General inquiries**  
Alexey Nesvizhskii, Ph.D.  
University of Michigan, Ann Arbor  
Email: nesvi@umich.edu  
http://www.nesvilab.org  

Please use the [bug tracker](https://github.com/chhh/batmass/issues) to ask questions, submit feature requests and bug reports.
