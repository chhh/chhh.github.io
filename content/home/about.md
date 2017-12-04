+++
# About/Biography widget.
widget = "about"
active = true
date = "2016-04-20T00:00:00"

# Order that this section will appear in.
weight = 5

# List your academic interests.
[interests]
  interests = [
    "Mass Spectrometry",
    "Algorithms",
    "Data Visualization",
    "Ion Mobility",
    "Desktop Applications"
  ]

# List your qualifications (such as academic degrees).
[[education.courses]]
  course = "PhD, Physics and Mathematics"
  institution = "Institute for Energy Problems of Chemical Physics"
  year = 2012

[[education.courses]]
  course = "MSc, Applied Physics and Mathematics"
  institution = "Moscow Institute of Physics and Technology (MIPT)"
  year = 2008

[[education.courses]]
  course = "BSc, Applied Physics and Mathematics"
  institution = "Moscow Institute of Physics and Technology (MIPT)"
  year = 2006

+++

# Biography

I am a Postdoc at [Alexey Neshvizhskii's Lab](http://nesvilab.org) at the University of Michgan. The main area of research is anything related to mass spectrometry data processing, especially liquid chromatography and ion mobility mass spectrometry (LC-MS, IM-MS). I develop mostly in Java, with occasional pieces in C#, Python and C++, some of my projects in the lab are:  

- [BatMass](http://batmass.org) - mass spectrometry data visualization and processing tool built on the NetBeans platform.
- [MSFTBX](https://github.com/chhh/msftbx) - a fast Java library for mass spectrometry data files access (mzML, mzXML, pepXML, protXML, mzId, mzIdentML, etc). Writers for some formats are also available. This library is on [Maven Central](http://search.maven.org/#search%7Cga%7C1%7Ca%3A%22msftbx%22).
- [MSFragger](https://github.com/chhh/msfragger-gui) - the ultra-fast proteomics search engine. Regular searches - when the precursor mass is limited to a narrow window of several ppm - are done within a few seconds. An "open-search" (i.e. with no precursor mass is mostly not limited, e.g. +/-500 Da) for a 2 hour LC gradient bottom-up proteomics experiment can be done in a minute or so on a laptop.
- [DIA-Umpire](http://diaumpire.sourceforge.net/) - a tool for Data Independent Acquisition (DIA) data processing. Detects features in MS1 and MS2, correlates precursors to fragments based on elution profile similarity and compiles pseudo-MS/MS spectra from these groups, which can later be searched with standard proteomic search tools.
- Efficient calculation of isotopic fine structure up to predefined aggregated probability.
- Better signal processing for Ion Mobility (IM) / Liquid Chromatography (LC) mass spectrometry. Multidimensional feature detection (ion mobility, retention time, m/z).

I started my scientific career at Prof. Eugene Nikolaev's Ion Physics lab in Moscow. The lab hosted a slew of mass spectrometers, including Thermo LTQ-FT Ultra, Bruker Microflex, Bruker Apex QE, an in-house built 4.7T ICR and multiple ion traps. I supposedly burned the internal wiring for one of the ion traps (Finnigan LCQ Deca XP) during an experiment (there's no proof it was my fault), but I restored it back to working condition. During this period my focus was on:  

- Setting up the lab for routine proteomics operations:
  - in-house designed and manufactured Nano-ESI ion source
  - manufacturing of spraying columns for HPLC (ESI spraying tip integrated with the chromatographic column)
  - setting up database search resources (Mascot server at the time)
- Negative ion source development for ETD (Electron Transfer Dissociation)
  - in-house designed and installed into Finningan LCQ Deca XP
- Supercomputer modeling of ion cloud movement in electric and magnetic field
  - for simulation of ion cloud motion in ICR mass spectrometers
- Development of algorithms for peptide retention time alignment across multiple runs
