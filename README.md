# microscoPi

<p>
  <img src="https://raw.githubusercontent.com/comparativechrono/microscoPi/main/images/microscoPI%20v3.png" alt="MicroscoPI" width="200" style="float: right; margin-left: 20px; vertical-align: top;" />
  This repository contains useful code associated with various Raspberry Pi microscopy projects — collectively referred to as the <strong>"microscoPi"</strong> project.
</p>




# Why turn a Raspberry Pi into a microscope?

Making automated imaging systems for circadian analysis is something I have been passionate about for a while now. The motivation for this is simple - imaging solutions are often expensive, and cannot be deployed in situations of physiological relevance e.g. inside a growth cabinet or with changing environmental conditions.

Alex Webb introduced me to the wonderful world of Raspberry Pi's, and since then I have attempted to include Pi solutions wherever possible. 

This repo includes some of the code that we have used on various projects over the years. One of the take home messages from doing this kind of work has been to focus on the actual biological measurements, rather than an elegant solution. Often these imaging approaches have been taken with a need to gather data quickly - therefore simple unix or python solutions run off the command line are easier and more versatile than building a beautiful GUI.

The first microsoPi was used for the time course imaging in Fong et al., 2021 (https://pubmed.ncbi.nlm.nih.gov/33689719/), at the UCL fish facility. This was a very simple approach, but it got the job done.

# Analysing images

Collecting timecourses of cells or tissues is relatively easy, even in the dark with a Pi NoIR. What is more challenging is analysing the size of different strucutres under changing lighting conditions. One could write a very clever script to normalise pixel intensity, or one could simply always turn the lights off when imaging! This is my solution, and therefore analysing images can be done using standard image J plugins. It does mean the image quality is relatively low, but I see that as a trade off that is more easily worked around.

# What's in this repository?

In this repository you will find the following directories:
*    analysis - a directory containing analysis notebooks and scripts used to analyse videos or images.
*    statistics - a directory containing notebooks useed to run satistical analysis on data extracted from videos or images.
*    Cam - a directory containing instructions for how to build the automated microscope used in Alex Webb's lab in the Department of Plant Sciences at the University of Cambridge.
*    UCL - a directory containing instructions for how to build the automated heart imaging system used in David Whitmore's lab at UCL, and following this in the Hearn lab in the Department of Genomic Medicine at the University of Cambridge.
*    Papers - material used for specific papers that have cited this repository.

Everything else is either material supporting this repo build, or working material dumped in the sandbox.

# License
This project is open-source and available under the MIT License.
