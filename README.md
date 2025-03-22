# microscoPi

<table>
  <tr>
    <td style="vertical-align: top; border: none;">
      <img src="https://raw.githubusercontent.com/comparativechrono/microscoPi/main/images/microscoPI%20v3.png" alt="MicroscoPI" width="200" />
    </td>
    <td style="vertical-align: top; border: none; padding-left: 20px;">
      This repository contains code and documentation for various Raspberry Pi-based microscopy projects — collectively referred to as <strong>"microscoPi"</strong>.
    </td>
  </tr>
</table>

---

## 🧠 Why turn a Raspberry Pi into a microscope?

Creating automated imaging systems for circadian analysis has been a long-standing passion of mine. The motivation is simple: traditional imaging systems are often prohibitively expensive and can't be deployed in realistic biological environments — for example, inside a growth cabinet or under dynamic environmental conditions.

Alex Webb introduced me to the world of Raspberry Pi, and since then, I've tried to integrate Pi-based solutions wherever possible.

This repository contains code we've used in various projects over the years. One major takeaway from this work has been to prioritise **biological measurement** over engineering elegance. Many of these imaging systems were built with urgency — prioritising function over form. As a result, most tools are simple Python or Unix command-line scripts. No fancy GUI — just what works.

The first *microscoPi* was used in the time-course imaging setup described in [Fong et al., 2021](https://pubmed.ncbi.nlm.nih.gov/33689719/), at the UCL fish facility. It was basic, but it got the job done.

---

## 🧪 Analysing Images

Capturing time courses of cells or tissues — even in low-light with a Pi NoIR — is straightforward. What’s more challenging is analyzing structural changes under varying lighting conditions.

Sure, one could write a clever script to normalize pixel intensity...  
**Or** you could just turn the lights off when imaging.

That’s my preferred solution — simple and reproducible. As a result, most image analysis can be done with standard python image libraries on the Pi itself. Image quality may not be publication-grade microscopy, but the data is usable, and that’s the real goal.

---

## 📁 What's in this repository?

Here’s a quick breakdown of what you’ll find:

- **`analysis/`** – Notebooks and scripts for analysing videos or time-lapse images.  
- **`statistics/`** – Notebooks for running statistical analyses on extracted data.  
- **`Cam/`** – Instructions for building the automated microscope used in Alex Webb's lab (Department of Plant Sciences, University of Cambridge).  
- **`UCL/`** – Instructions for building the automated heart imaging system used in David Whitmore's lab (UCL) and later in the Hearn lab (Department of Genomic Medicine, University of Cambridge).  
- **`Papers/`** – Project-specific materials for papers citing this repository.

Everything else is either support material or sandbox content still in progress.

---

## 🚀 Getting Started

If you're looking to build your own microscoPi setup or run any of the analysis code, then feel free to clone this repository. I suggest beginners follow the step-by-step instructions in the UCL directory.

---

## 📄 Citation

If you use this code or concept in your research, feel free to cite the associated paper:  
[Fong et al., 2021](https://pubmed.ncbi.nlm.nih.gov/33689719/)

---
## 📜 License

This project is open source and available under the **MIT License**.

