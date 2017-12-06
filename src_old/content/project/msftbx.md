+++
client_name = ""
date = "2016-07-12"
image = ""
image_preview = ""
summary = "High performance mass spectrometry data access Java library"
tags = []
title = "MSFTBX"
external_link = "http://github.com/chhh/msftbx"

+++

The acronym stands for `Mass Spectrometry File Toolbox`.  
This is a library for access to some common mass-spectrometry/proteomics data formats from Java.  
This library is what drives [BatMass](http://batmass.org).

## Features
- Parsers for mzML/mzXML with unified API
  - Very fast, multi-threaded
  - Rich standardized API for contents of those files (scan and run meta-info, not just spectra).
  - msNumpress compression support for mzML
  - Automated LC/MS run structure determination:
    - Data structures for parent-child relationship between spectra
    - Indexes for scans based on scan numbers, retention times both globally
    and for each MS level separately
    - Convenient methods to get next-previous scans at the same MS level
  - Tolerant to malformed data
    - Can handle MS2 scan tags nested inside MS1 scans
    - Tolerant to missing or broken file index
    - Reindexing on the fly
  - Memory management
    - Automated spectra parsing on demand
      - You can parse just the structure of an LC/MS run without the spectral data, the memory footprint in this case will be very small. Only when spectra are requested
      will they be parsed.
      - Soft referencing of spectral data for GC
    - Tracking of which loaded data is not being used by any components with automated unloading.
- Upcoming support for Thermo RAW files on Windows
- pepXML parser and writer
- protXML parser and writer
- mzIdentML parser
- GPMdb XML files parser
- Agilent .cef files parser

### Referencing the work
If you use BatMass for your research or work, please cite the following paper:  
**[Avtonomov D.M. et al:
J. Proteome Res. June 16, 2016.
DOI: 10.1021/acs.jproteome.6b00021.](https://dx.doi.org/10.1021/acs.jproteome.6b00021)**
