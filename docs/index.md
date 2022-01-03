--- 
title: "UW CSDE 502 A Course Notes"
author: "Phil Hurvitz"
date: "2022-01-02"
site: bookdown::bookdown_site
#description: "These are the course notes for Proseminar Winter 2022 (CSDE 502 A) at the University of Washington."

bibliography: [book.bib, packages.bib]
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
suppress-bibliography: true
---



# Introduction and Welcome! {.unnumbered}

This is the main course notes for CSDE 502 for Winter 2022. It will contain or link to all lecture notes, code examples, exercises, and assignments. We will review these course notes during lecture. Assignment answer keys will be provided on the Canvas site, accessible only to currently enrolled CSDE 502 students.

## About this course {.unnumbered}

:::{.rmdnote}
**Course listing and syllabus**

Links to the course listing page and official course syllabus are below:

* Course description: [CSDE 502 Proseminar](https://csde.washington.edu/training/demographic-certificate/courses/csde-502/a)
* Entry in the UW course catalog: [Ctr for Stdies in Demography and Ecology](https://www.washington.edu/students/crscat/csde.html)
* The course syllabus is available as a PDF: [csde502_syllabus_2022.pdf](csde502_syllabus_2022.pdf)
:::

**Scope:** CSDE 502 is tightly paired with [SOC/CSSS/CSDE 533 A (Research Methods in Demography)](https://hanowell.github.io/uwsoc533a/index.html) ("CSDE 533"). Expect to see cross-references in these notes to the notes for CSDE 533 and vice versa. Techniques introduced in this course will be applied in CSDE 533. Some analytic topics introduced in CSDE 533 will be covered in more depth, with explanation of the data and processing in these notes.

**Objectives:** Upon completion, you will be familiar with a range of data processing approaches for quantitative demographic analysis. These skills will support your understanding and use of concepts and tools of demography introduced in CSDE 533.

**Instructor:** [Phil Hurvitz](gis.washington.edu/phurvitz), phurvitz@uw.edu<br>
Office hours: by appointment; see [my calendar](http://staff.washington.edu/phurvitz/calendar) and suggest times to meet.


## Course logistics {.unnumbered}

Class meetings {.unnumbered}

:::{.rmdnote}
**Course location:** Class meetings will happen initially over Zoom. The Zoom link for this course is [https://washington.zoom.us/j/97609440755](https://washington.zoom.us/j/976094407559). It is not known whether in-person class meetings will be held during Winter 2022.

**Course days and times:** Friday 10:30-12:20<br>
Please come to class promptly at the scheduled time. There will be a 10-minute break about halfway through each class session.

**Canvas site:** The course has a Canvas site [https://canvas.uw.edu/courses/1515226](https://canvas.uw.edu/courses/1515226), which will be used for collection of assignments and distribution of graded assignments. The site may also be used for distribution of data sets used in the course.
:::

**Class format**

Default class-time agenda:

1. Address outstanding issues from previous sessions or assignments (~10 minutes)
1. A brief lecture to introduce the topics of the day (~5 minutes)
1. A hands-on instructional session (~75 minutes)
1. Overview/clarification of assignment (~10 minutes)

### Computing {.unnumbered}
We will do our assignments in R. Use an Internet-connected computer provisioned with the latest versions of [R](https://www.r-project.org/) [-@R-base], [RStudio Desktop](https://www.rstudio.com/products/rstudio/), and the latest versions of following R packages:

* [knitr](https://yihui.org/knitr/) [-@R-knitr]
* [kableExtra](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html) [-@R-kableExtra]
* [rmarkdown](https://rmarkdown.rstudio.com/lesson-1.html) [-@R-rmarkdown]
* [tidyverse](https://www.tidyverse.org/) [-@tidyverse]

Other packages will be used, to be installed as necessary during in-class exercises.

All computing for this course should optimally be done on CSDE Terminal Servers (TS). Those students that already have TS access (e.g., CSDE trainees) should be able to use their existing TS1, TS2, or TS3 accounts, but are encouraged to use TS4 for this course so that we will all be using the same environment. More recent student CSDE computing accounts for the general UW student population will use TS4 (csde-ts4.csde.washington.edu).

Most students have computers capable of running R and handling relatively large data sets. However, using a common computing environment will help us avoid some of the problems associated with running the same code on different machines that have different operating systems, processors, RAM, graphics cards, R versions, etc. This will aid in troubleshooting any problems that arise. You may use your own computer during lessons, but only limited time will be available if problems arise due to your computer's unique environment that cannot be addressed quickly.

In order to get access to the CSDE Terminal Servers, see [CSDE Computing Accounts](https://csde.washington.edu/computing/accounts/). All students at UW who pay the [Student Technology Fee](https://uwstf.org/) are legible to obtain CSDE computing accounts.

For information about the CSDE Terminal Servers, see [Choosing a Terminal  Server](https://csde.washington.edu/computing/resources/#TerminalServerChoosing). For instructions on connecting to a Terminal Server, see [Computing tutorials](https://csde.washington.edu/computing/tutorials/).

In order to make remote connections to TS4, you will need a remote desktop protocol (RDP) client. Windows has a built-in "Remote Desktop" application. The same is available for Macs at the Apple Store. Windows users may also want to use [mRemoteNG](https://mremoteng.org/), which I find to be a bit more full-featured than the built-in Windows application. For example, mRemoteNG can have any window size, whereas the Windows RDP application has fixed size that must be specified at the time of connection. Linux users can use [Remmina](https://sourceforge.net/projects/remmina/).

In addition to the RDP client, in order to access any of CSDE's computing resources, it is necessary to install and enable Husky OnNet, the UW virtual private network (VPN) client. Instructions are available at [Download and use Husky OnNet](https://itconnect.uw.edu/connect/uw-networks/about-husky-onnet/use-husky-onnet/)

:::{.rmdnote}
**Computing resource links**

* [CSDE 502 Proseminar course notes](http://staff.washington.edu/phurvitz/csde502_winter_2021/week1.html)
* [CSDE Computing Resources](https://csde.washington.edu/computing/resources/)
* [RStudio Education Beginners course](https://education.rstudio.com/learn/beginner/)
:::

### Assignments and grading {.unnumbered}
Each week there will be an assignment made available at 12:00 on the day of class meetings. The assignments are designed to allow students to practice the skills introduced in class sessions. Assignments are due at 09:00 AM on Friday of the week following when the assignment was distributed; answer keys will be posted at this time. Because the answer keys are posted at the due date/time, late work will not be reviewed.

Assignments will be reviewed thoroughly and returned with relevant mark-up, corrections, suggestions, etc. and returned via the course Canvas site.

This course is graded credit/no credit. Students should complete as much of each of the assignments as they can within a reasonable amount of time.

## Course policies {.unnumbered}

**Student conduct:** ["Students at the University of Washington are expected to maintain a certain standard of conduct and be responsible members of the community. The Student Conduct Code defines prohibited conduct and describes how the University holds students accountable as they pursue their academic goals."](https://www.washington.edu/studentconduct/) Prohibited academic conduct includes cheating, falsification, and plagiarism. Evidence of academic misconduct will be referred to the relevant UW conduct office.

_You are encouraged to work on assignments with other students_, but the work you turn in must be your own best effort.

:::{.rmdnote}
**UW Libraries Plagiarism Awareness guide**

A link to the guide is below:

* [UW Libraries Plagiarism Awareness guide](https://www.lib.washington.edu/teaching/plagiarism)
:::

**Accommodation:** Your experience in this class is important to me. If you have already established accommodations with Disability Resources for Students (DRS), please communicate your approved accommodations to me at your earliest convenience so we can discuss your needs in this course. The website for the DRS provides other resources for students and faculty for making accommodations.

Washington state law requires that UW develop a policy for accommodation of student absences or significant hardship due to reasons of faith or conscience, or for organized religious activities. The UW's policy, including more information about how to request an accommodation, is available at Religious Accommodations Policy. Accommodations must be requested within the first two weeks of this course using the Religious Accommodations Request form.

:::{.rmdnote}
**Accommodation resource links**

* [Disability Resources for Students](https://depts.washington.edu/uwdrs/)
* [Religious Accommodations Policy](https://registrar.washington.edu/staffandfaculty/religious-accommodations-policy/)
* [Religious Accommodations Request form](https://registrar.washington.edu/students/religious-accommodations-request/)
:::

**Diversity and inclusion:** ["At the University of Washington, diversity is integral to excellence. We value and honor diverse experiences and perspectives, strive to create welcoming and respectful learning environments, and promote access, opportunity and justice for all."](https://www.washington.edu/diversity/)

**SafeCampus:** Preventing violence is a shared responsibility in which everyone at the UW plays a part. If you experience harassment during your studies, please report it to the SafeCampus website (anonymous reports are possible). SafeCampus provides information on counseling and safety resources, University policies, and violence reporting requirements help us maintain a safe personal, work and learning environment.

:::{.rmdnote}
**SafeCampus website**

A link to the SafeCampus program is below:

* [SafeCampus website](https://www.washington.edu/safecampus/)
:::

## Course calendar {.unnumbered}
### Week 1 {.unnumbered}
* **Topics**
    * R data types
    * R data structures
    * R native pipes (`magrittr` and `tidyverse`)
    * Data manipulation in the `tidyverse`
    * Employee turnover data
        * [Babushkin data](https://github.com/teuschb/hr_data/blob/master/datasets/turnover_babushkin.csv)
        * [Kaggle documentation of Babuskin data](https://www.kaggle.com/davinwijaya/employee-turnover)
        * [Ben's attrition rate code](https://github.com/hanowell/uwsoc533a/blob/main/gists/employee-turnover-gist.R)
* **Assignment**: 

### Week 2 {.unnumbered}
* **Topics**
    * Code blocks in R Markdown
    * Graphs in R Markdown
    * Tables in R Markdown
    * Equations in R Markdown
    * HTML output from R Markdown
    * [Keyring: securely store secrets](https://cran.r-project.org/web/packages/keyring/)
    * Data:
        * [Human Mortality Database](https://www.mortality.org/)
        * [Human Fertility Database](https://www.humanfertility.org/cgi-bin/main.php)
        * [HMDHFDplus: Read Human Mortality Database and Human Fertility Database Data from the Web](https://cran.r-project.org/web/packages/HMDHFDplus/index.html)
    [Ben's code for reading HMD and HFD data](https://github.com/hanowell/uwsoc533a/blob/main/gists/HMDHFDplus-gist.R)
* **Assignment**: 

### Week 3 {.unnumbered}
* **Topics**: 
    * [`tidycensus`](https://walker-data.com/tidycensus/): download census data easily
    * [`idbr: R Interface to the US Census Bureau International Data Base API`](https://cran.r-project.org/web/packages/idbr/index.html)
    * [`sf: Simple Features for R`](https://cran.r-project.org/web/packages/sf/): GIS in R!
    * [`leaflet: Create Interactive Web Maps with the JavaScript 'Leaflet' Library`](https://cran.r-project.org/web/packages/leaflet/)
    * [`mapview: Interactive Viewing of Spatial Data in R`](https://cran.r-project.org/web/packages/mapview/)
    * Life Tables with [`demogR`](https://cran.r-project.org/web/packages/demogR/index.html), [`demography`](https://cran.r-project.org/web/packages/demography/) ([`demography`](https://rpubs.com/Timexpo/487053))
    * Data:
        * Accessing Muman Mortality Database life tables using [HMDHFDplus](https://cran.r-project.org/web/packages/HMDHFDplus/index.html)
        * Pretty printouts of life tables with `flextable` and `DT`
* **Assignment**: 

### Week 4 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 5 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 6 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 7 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 8 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 9 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 10 {.unnumbered}
* **Topics**: 
* **Assignment**: 


## About this web site
This web site was built in R using Rmarkdown and [bookdown](https://cran.r-project.org/web/packages/bookdown/) with the [bs4_book](https://pkgs.rstudio.com/bookdown/reference/bs4_book.html) template, which uses the [Bootstrap](https://getbootstrap.com/) framework. One of the unfortunate side effects of this format is that all captions are placed _below_ the table or figure! 

<h4>Source code for this document</h4>
Each of the pages in this book will have a section at the bottom including the source code for the page.

````
--- 
title: "UW CSDE 502 A Course Notes"
author: "Phil Hurvitz"
date: "`r Sys.Date()`"
site: bookdown::bookdown_site
#description: "These are the course notes for Proseminar Winter 2022 (CSDE 502 A) at the University of Washington."

bibliography: [book.bib, packages.bib]
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
suppress-bibliography: true
---

```{r setup, warning=FALSE, message=FALSE, echo=FALSE}
library(dplyr)
library(emo)
library(knitr)
library(magrittr)
library(scales)
library(tibble)

knitr::opts_chunk$set(echo = FALSE)

year <- Sys.Date() %>% format("%Y")
syllabus <- paste0("csde502_syllabus_", year, ".pdf")
```

# Introduction and Welcome! {.unnumbered}

This is the main course notes for CSDE 502 for Winter 2022. It will contain or link to all lecture notes, code examples, exercises, and assignments. We will review these course notes during lecture. Assignment answer keys will be provided on the Canvas site, accessible only to currently enrolled CSDE 502 students.

## About this course {.unnumbered}

:::{.rmdnote}
**Course listing and syllabus**

Links to the course listing page and official course syllabus are below:

* Course description: [CSDE 502 Proseminar](https://csde.washington.edu/training/demographic-certificate/courses/csde-502/a)
* Entry in the UW course catalog: [Ctr for Stdies in Demography and Ecology](https://www.washington.edu/students/crscat/csde.html)
* The course syllabus is available as a PDF: [`r syllabus`](`r syllabus`)
:::

**Scope:** CSDE 502 is tightly paired with [SOC/CSSS/CSDE 533 A (Research Methods in Demography)](https://hanowell.github.io/uwsoc533a/index.html) ("CSDE 533"). Expect to see cross-references in these notes to the notes for CSDE 533 and vice versa. Techniques introduced in this course will be applied in CSDE 533. Some analytic topics introduced in CSDE 533 will be covered in more depth, with explanation of the data and processing in these notes.

**Objectives:** Upon completion, you will be familiar with a range of data processing approaches for quantitative demographic analysis. These skills will support your understanding and use of concepts and tools of demography introduced in CSDE 533.

**Instructor:** [Phil Hurvitz](gis.washington.edu/phurvitz), phurvitz@uw.edu<br>
Office hours: by appointment; see [my calendar](http://staff.washington.edu/phurvitz/calendar) and suggest times to meet.


## Course logistics {.unnumbered}

Class meetings {.unnumbered}

:::{.rmdnote}
**Course location:** Class meetings will happen initially over Zoom. The Zoom link for this course is [https://washington.zoom.us/j/97609440755](https://washington.zoom.us/j/976094407559). It is not known whether in-person class meetings will be held during Winter 2022.

**Course days and times:** Friday 10:30-12:20<br>
Please come to class promptly at the scheduled time. There will be a 10-minute break about halfway through each class session.

**Canvas site:** The course has a Canvas site [https://canvas.uw.edu/courses/1515226](https://canvas.uw.edu/courses/1515226), which will be used for collection of assignments and distribution of graded assignments. The site may also be used for distribution of data sets used in the course.
:::

**Class format**

Default class-time agenda:

1. Address outstanding issues from previous sessions or assignments (~10 minutes)
1. A brief lecture to introduce the topics of the day (~5 minutes)
1. A hands-on instructional session (~75 minutes)
1. Overview/clarification of assignment (~10 minutes)

### Computing {.unnumbered}
We will do our assignments in R. Use an Internet-connected computer provisioned with the latest versions of [R](https://www.r-project.org/) [-@R-base], [RStudio Desktop](https://www.rstudio.com/products/rstudio/), and the latest versions of following R packages:

* [knitr](https://yihui.org/knitr/) [-@R-knitr]
* [kableExtra](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html) [-@R-kableExtra]
* [rmarkdown](https://rmarkdown.rstudio.com/lesson-1.html) [-@R-rmarkdown]
* [tidyverse](https://www.tidyverse.org/) [-@tidyverse]

Other packages will be used, to be installed as necessary during in-class exercises.

All computing for this course should optimally be done on CSDE Terminal Servers (TS). Those students that already have TS access (e.g., CSDE trainees) should be able to use their existing TS1, TS2, or TS3 accounts, but are encouraged to use TS4 for this course so that we will all be using the same environment. More recent student CSDE computing accounts for the general UW student population will use TS4 (csde-ts4.csde.washington.edu).

Most students have computers capable of running R and handling relatively large data sets. However, using a common computing environment will help us avoid some of the problems associated with running the same code on different machines that have different operating systems, processors, RAM, graphics cards, R versions, etc. This will aid in troubleshooting any problems that arise. You may use your own computer during lessons, but only limited time will be available if problems arise due to your computer's unique environment that cannot be addressed quickly.

In order to get access to the CSDE Terminal Servers, see [CSDE Computing Accounts](https://csde.washington.edu/computing/accounts/). All students at UW who pay the [Student Technology Fee](https://uwstf.org/) are legible to obtain CSDE computing accounts.

For information about the CSDE Terminal Servers, see [Choosing a Terminal  Server](https://csde.washington.edu/computing/resources/#TerminalServerChoosing). For instructions on connecting to a Terminal Server, see [Computing tutorials](https://csde.washington.edu/computing/tutorials/).

In order to make remote connections to TS4, you will need a remote desktop protocol (RDP) client. Windows has a built-in "Remote Desktop" application. The same is available for Macs at the Apple Store. Windows users may also want to use [mRemoteNG](https://mremoteng.org/), which I find to be a bit more full-featured than the built-in Windows application. For example, mRemoteNG can have any window size, whereas the Windows RDP application has fixed size that must be specified at the time of connection. Linux users can use [Remmina](https://sourceforge.net/projects/remmina/).

In addition to the RDP client, in order to access any of CSDE's computing resources, it is necessary to install and enable Husky OnNet, the UW virtual private network (VPN) client. Instructions are available at [Download and use Husky OnNet](https://itconnect.uw.edu/connect/uw-networks/about-husky-onnet/use-husky-onnet/)

:::{.rmdnote}
**Computing resource links**

* [CSDE 502 Proseminar course notes](http://staff.washington.edu/phurvitz/csde502_winter_2021/week1.html)
* [CSDE Computing Resources](https://csde.washington.edu/computing/resources/)
* [RStudio Education Beginners course](https://education.rstudio.com/learn/beginner/)
:::

### Assignments and grading {.unnumbered}
Each week there will be an assignment made available at 12:00 on the day of class meetings. The assignments are designed to allow students to practice the skills introduced in class sessions. Assignments are due at 09:00 AM on Friday of the week following when the assignment was distributed; answer keys will be posted at this time. Because the answer keys are posted at the due date/time, late work will not be reviewed.

Assignments will be reviewed thoroughly and returned with relevant mark-up, corrections, suggestions, etc. and returned via the course Canvas site.

This course is graded credit/no credit. Students should complete as much of each of the assignments as they can within a reasonable amount of time.

## Course policies {.unnumbered}

**Student conduct:** ["Students at the University of Washington are expected to maintain a certain standard of conduct and be responsible members of the community. The Student Conduct Code defines prohibited conduct and describes how the University holds students accountable as they pursue their academic goals."](https://www.washington.edu/studentconduct/) Prohibited academic conduct includes cheating, falsification, and plagiarism. Evidence of academic misconduct will be referred to the relevant UW conduct office.

_You are encouraged to work on assignments with other students_, but the work you turn in must be your own best effort.

:::{.rmdnote}
**UW Libraries Plagiarism Awareness guide**

A link to the guide is below:

* [UW Libraries Plagiarism Awareness guide](https://www.lib.washington.edu/teaching/plagiarism)
:::

**Accommodation:** Your experience in this class is important to me. If you have already established accommodations with Disability Resources for Students (DRS), please communicate your approved accommodations to me at your earliest convenience so we can discuss your needs in this course. The website for the DRS provides other resources for students and faculty for making accommodations.

Washington state law requires that UW develop a policy for accommodation of student absences or significant hardship due to reasons of faith or conscience, or for organized religious activities. The UW's policy, including more information about how to request an accommodation, is available at Religious Accommodations Policy. Accommodations must be requested within the first two weeks of this course using the Religious Accommodations Request form.

:::{.rmdnote}
**Accommodation resource links**

* [Disability Resources for Students](https://depts.washington.edu/uwdrs/)
* [Religious Accommodations Policy](https://registrar.washington.edu/staffandfaculty/religious-accommodations-policy/)
* [Religious Accommodations Request form](https://registrar.washington.edu/students/religious-accommodations-request/)
:::

**Diversity and inclusion:** ["At the University of Washington, diversity is integral to excellence. We value and honor diverse experiences and perspectives, strive to create welcoming and respectful learning environments, and promote access, opportunity and justice for all."](https://www.washington.edu/diversity/)

**SafeCampus:** Preventing violence is a shared responsibility in which everyone at the UW plays a part. If you experience harassment during your studies, please report it to the SafeCampus website (anonymous reports are possible). SafeCampus provides information on counseling and safety resources, University policies, and violence reporting requirements help us maintain a safe personal, work and learning environment.

:::{.rmdnote}
**SafeCampus website**

A link to the SafeCampus program is below:

* [SafeCampus website](https://www.washington.edu/safecampus/)
:::

## Course calendar {.unnumbered}
### Week 1 {.unnumbered}
* **Topics**
    * R data types
    * R data structures
    * R native pipes (`magrittr` and `tidyverse`)
    * Data manipulation in the `tidyverse`
    * Employee turnover data
        * [Babushkin data](https://github.com/teuschb/hr_data/blob/master/datasets/turnover_babushkin.csv)
        * [Kaggle documentation of Babuskin data](https://www.kaggle.com/davinwijaya/employee-turnover)
        * [Ben's attrition rate code](https://github.com/hanowell/uwsoc533a/blob/main/gists/employee-turnover-gist.R)
* **Assignment**: 

### Week 2 {.unnumbered}
* **Topics**
    * Code blocks in R Markdown
    * Graphs in R Markdown
    * Tables in R Markdown
    * Equations in R Markdown
    * HTML output from R Markdown
    * [Keyring: securely store secrets](https://cran.r-project.org/web/packages/keyring/)
    * Data:
        * [Human Mortality Database](https://www.mortality.org/)
        * [Human Fertility Database](https://www.humanfertility.org/cgi-bin/main.php)
        * [HMDHFDplus: Read Human Mortality Database and Human Fertility Database Data from the Web](https://cran.r-project.org/web/packages/HMDHFDplus/index.html)
    [Ben's code for reading HMD and HFD data](https://github.com/hanowell/uwsoc533a/blob/main/gists/HMDHFDplus-gist.R)
* **Assignment**: 

### Week 3 {.unnumbered}
* **Topics**: 
    * [`tidycensus`](https://walker-data.com/tidycensus/): download census data easily
    * [`idbr: R Interface to the US Census Bureau International Data Base API`](https://cran.r-project.org/web/packages/idbr/index.html)
    * [`sf: Simple Features for R`](https://cran.r-project.org/web/packages/sf/): GIS in R!
    * [`leaflet: Create Interactive Web Maps with the JavaScript 'Leaflet' Library`](https://cran.r-project.org/web/packages/leaflet/)
    * [`mapview: Interactive Viewing of Spatial Data in R`](https://cran.r-project.org/web/packages/mapview/)
    * Life Tables with [`demogR`](https://cran.r-project.org/web/packages/demogR/index.html), [`demography`](https://cran.r-project.org/web/packages/demography/) ([`demography`](https://rpubs.com/Timexpo/487053))
    * Data:
        * Accessing Muman Mortality Database life tables using [HMDHFDplus](https://cran.r-project.org/web/packages/HMDHFDplus/index.html)
        * Pretty printouts of life tables with `flextable` and `DT`
* **Assignment**: 

### Week 4 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 5 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 6 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 7 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 8 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 9 {.unnumbered}
* **Topics**: 
* **Assignment**: 

### Week 10 {.unnumbered}
* **Topics**: 
* **Assignment**: 


## About this web site
This web site was built in R using Rmarkdown and [bookdown](https://cran.r-project.org/web/packages/bookdown/) with the [bs4_book](https://pkgs.rstudio.com/bookdown/reference/bs4_book.html) template, which uses the [Bootstrap](https://getbootstrap.com/) framework. One of the unfortunate side effects of this format is that all captions are placed _below_ the table or figure! 

<h4>Source code for this document</h4>
Each of the pages in this book will have a section at the bottom including the source code for the page.
```{r sourcecode_intro, comment='', echo=FALSE}
cat(readLines("index.Rmd"), sep = "\n")
```
````