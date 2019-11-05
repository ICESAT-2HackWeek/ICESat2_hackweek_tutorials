[![DOI](https://zenodo.org/badge/192627215.svg)](https://zenodo.org/badge/latestdoi/192627215)

# ICESat-2 Hackweek Tutorials
Combined repository for final tutorials presented during the ICESat-2 HackWeek at the Univeristy of Washington on June 17-21, 2019

## Background
The [ICESat-2 Cryospheric Science Hackweek](https://icesat-2hackweek.github.io/) was a 5-day hackweek held at the University of Washington. Participants learned about technologies used to access and process ICESat-2 data with a focus on the cryosphere. Mornings consisted of interactive lectures/tutorials, and afternoon sessions involved facilitated exploration of datasets and hands-on software development.  

The tutorials were largely developed by volunteer instructors.  Each tutorial was prepared and distributed as a separate repository under the [ICESat-2 Hackweek Github organization](https://github.com/ICESAT-2HackWeek).  At the beginning of each tutorial, participants cloned the repository and interactively worked through the material with the instructor.  

This ICESat2_hackweek_tutorials repository was created to centralize the final content from individual tutorial repositories and to provide a snapshot "release" of the material presented during the hackweek with a DOI for distribution to the larger community.  Some of these tutorials may continue to evolve in individual repositories (see links below).

## Re-create the icesat2 hackweek JupyterLab environment with Pangeo Binder

Clicking this button will launch a replica of the [icesat2 hackweek JupyterLab image](https://github.com/ICESAT-2HackWeek/jupyterhub-info) on AWS us-west-2 using a [pangeo binder](https://aws-uswest2-binder.pangeo.io). This will give you the same functionality as we had during the hackweek, but the session is ephemeral. **Your home directory will not persist, so use this only for running tutorials and other short-lived demos!**

[![badge](https://img.shields.io/badge/Launch%20Pangeo%20Binder-%20AWS%20us--west--2-F5A252.svg?logo=data:image/png;base64,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)](https://aws-uswest2-binder.pangeo.io/v2/gh/ICESAT-2HackWeek/pangeo-binder/master?urlpath=git-pull?repo=https://github.com/ICESAT-2HackWeek/ICESat2_hackweek_tutorials%26amp%3Bbranch=master%26amp%3Burlpath=lab%3Fautodecode)

## Tutorials 
### 01. Overview of the ICESat-2 mission (slides)
*Tom Neumann, Ron Kwok, Ben Smith*  
https://github.com/ICESAT-2HackWeek/intro_ICESat2

### 02. Introduction to Open Science and Reproducible Research
*Fernando Perez*  
https://github.com/ICESAT-2HackWeek/intro-jupyter-git

### 03. Access and Customize ICESat-2 Data via NSIDC API
*Amy Steiker, Bruce Wallin*  
https://github.com/ICESAT-2HackWeek/data-access

### 04. Intro to HDF5 and Reduction of ICESat-2 Data Files
*Fernando Paolo*  
https://github.com/ICESAT-2HackWeek/intro-hdf5

### 05. Clouds and ICESat-2 Data Filtering
*Ben Smith*  
https://github.com/ICESAT-2HackWeek/Clouds_and_data_filtering

### 06. Gridding and Filtering of ICESat/ICESat-2 Elevation Change Data
*Johan Nilsson*   
https://github.com/ICESAT-2HackWeek/gridding

### 07. ICESat-2 for Sea Ice
*Alek Petty*  
https://github.com/ICESAT-2HackWeek/sea-ice-tutorials

### 08. Geospatial Data Exploration, Analysis, and Visualization
*David Shean*  
https://github.com/ICESAT-2HackWeek/geospatial-analysis

### 09. Correcting ICESat-2 data and related applications
*Maya Becker, Susheel Adusumilli*  
https://github.com/ICESAT-2HackWeek/data-correction

### 10. Numerical Modeling
*Daniel Shapero*  
https://gitlab.com/danshapero/icesat-2019-06-20

## How to reproduce and run locally
These tutorials were deployed on a JupyterHub instance running in the cloud.  For information how to reproduce on your own system, see the following.

### 00. Preliminary material
*Anthony Arendt*  
https://icesat-2hackweek.github.io/preliminary/

### 11. JupyterHub Environment for Icesat-2 Hackweek
*Scott Henderson*  
https://github.com/ICESAT-2HackWeek/jupyterhub-info.

## Citation and License
Most of the tutorial content is original material prepared by a team of volunteer instructors, all of whom have day jobs as scientists, engineers, and educators.  While this material is not necessarily appropriate for a peer-reviewed journal article publication, we released the tutorial material with a digital object identifier (DOI).  If you find these tutorials useful, or you adapt some of the underlying source code, we request that you cite as:

>Anthony Arendt, Ben Smith, David Shean, Amy Steiker, Alek Petty, Fernando Perez, Scott Henderson, Fernando Paolo, Johan Nilsson, Maya Becker, Susheel Adusumilli, Daniel Shapero, Bruce Wallin, Axel Schweiger, Suzanne Dickinson, Nicholas Hoschuh, Matthew Siegfried, Thomas Neumann. (2019). ICESAT-2HackWeek/ICESat2_hackweek_tutorials (Version 1.0). Zenodo. http://doi.org/10.5281/zenodo.3360994

Please click on the Zenodo badge for latest citation information and export options:
[![DOI](https://zenodo.org/badge/192627215.svg)](https://zenodo.org/badge/latestdoi/192627215)

The content of this project is licensed under the [Creative Commons Attribution 3.0 Unported license](https://creativecommons.org/licenses/by/3.0/), and the underlying source code used to format and display that content is licensed under the [MIT license](LICENSE.md).
