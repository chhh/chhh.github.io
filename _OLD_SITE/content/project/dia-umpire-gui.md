+++
client_name = ""
date = "2016-07-11"
image = "umpire_logo_v2.4_full.png"
image_preview = "umpire_logo_v2.4_150.png"
summary = "Graphical user interface for running DIA-Umpire -> Comet search -> Peptide/Protein Prophet"
tags = []
title = "DIA-Umpire GUI"
external_link = "https://github.com/Nesvilab/dia-umpire-gui"

+++

This is a very simple java GUI for running [DIA-Umpire](http://diaumpire.sourceforge.net/). It not only runs Umpire itself, but can run the whole downstream processing as well, including Comet database search,

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
