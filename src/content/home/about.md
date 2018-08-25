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

# Bio

I am a Postdoc at [Alexey Neshvizhskii's Lab](http://nesvilab.org) at the University of Michgan. The main area of research is anything related to mass spectrometry data processing, especially liquid chromatography (LC) and ion mobility (IM) mass spectrometry (LC-MS, IM-MS). I develop mostly in Java, with occasional pieces in C#, Python and C++, some of the projects include:  

<i class="fas fa-tshirt"></i>

- [BatMass](http://batmass.org) - Mass spectrometry data visualization and processing.
- [MSFragger](https://github.com/chhh/msfragger-gui) - Ultra-fast proteomics search engine for Closed and Open searches.
- [MSFTBX](https://github.com/chhh/msftbx) - Java library for MS data files access (mzML, mzXML, pepXML, protXML, mzId, mzIdentML, etc).
- [IMTBX+Grppr](https://chhh.github.io/IMTBX) - A suite of tools for extracting signals from Ion Mobility (IM) data (IM-MS, LC-IM-MS) and performing isotopic envelopes detection.
- [DIA-Umpire](http://diaumpire.sourceforge.net/) - Data Independent Acquisition (DIA) data processing tool that doesn't require a spectral library.

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
