--- 
title: "UW CSDE 502 A Course Notes"
author: "Phil Hurvitz"
date: "2022-01-07"
site: bookdown::bookdown_site
description: "These are the course notes for Proseminar Winter 2022 (CSDE 502 A) at the University of Washington."

bibliography: [book.bib, packages.bib]
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
suppress-bibliography: true
---

# Introduction and Welcome! {.unnumbered}

Placeholder


## About this course {.unnumbered}
## Course logistics {.unnumbered}
### Course location {.unnumbered}
### Course days and times {.unnumbered}
### Canvas site {.unnumbered}
### Class format {.unnumbered}
## Computing {.unnumbered}
## Assignments and grading {.unnumbered}
## Course policies {.unnumbered}
## Course calendar {.unnumbered}
## About this web site {.unnumbered}

<!--chapter:end:index.Rmd-->


# Week 1 {#week1}

Placeholder


## Getting started on Terminal Server 4 {#gettingstarted}
## Introduction to R Markdown in RStudio {#intrormd}
### Create a project
### Create an R Markdown file from built-in RStudio functionality
#### Render the Rmd file as HTML
### Create an R Markdown file with some enhancements
#### Render and view the enhanced output
## R data types {#rdatatypes}
### Logical
### Numeric
### Integer
### Complex
### Character
### Raw
## R data structures {#rdatastructures}
### Vector
### Matrix
### Array
### List
### Factor
### Data frame
## File systems {#filesystems}
## Data manipulation in the `tidyverse` {#tidyverse}
### magrittr{#magrittr}
### Data subsetting (dplyr)
##### Logical tests
###### `==`: equals
###### `>`, `>=`, `<`, `<=`: numeric comparisons
###### `!=`: not equals
###### `!`: invert, or "not"
#### Subset rows (`filter()`)
#### Subset columns (`select()`)
#### Subset rows and columns: `filter()` and `select()`
#### Create or calculate columns: `mutate()`
#### Summarizing/aggregating data
#### purrr: efficient iterating over elements in vectors and lists
## Data sets {#datasets001}
### Edward Babushkin's Employee turnover data

<!--chapter:end:01-week01.Rmd-->


# Week 2 {#week2}

Placeholder


## Code to run for the in-class exercise
## R Markdown 
### Code blocks {#rmdcodeblocks}
### Graphics in R Markdown {#rmdgraphics}
#### Base R graphics
#### `ggplot2` graphics
#### Embedding graphics files
##### `knitr`
##### Markdown: `![caption](filename)`
##### HTML `<img>` tag
### Tables in R Markdown {#rmdtables}
#### `kntir` (`kable()`) and `kableExtra`
#### `stargazer`
#### `pander`
### Captions to support tables, figures, and equations {#rmdcaptions}
#### Figures
##### R Markdown code chunk `fig.cap`
##### `bookdown` with `html_document2` output type
#### Tables: `kable()` "caption"
##### `bookdown` with `html_document2` output type
#### Equations {# rmdequations}
### `captioner` for any captioning and cross-referencing figures and tables

<!--chapter:end:02-week02.Rmd-->


# Week 3 {#week3}

Placeholder


## Keyring: securely store secrets
## Ben's code for reading HMD and HFD data {#hanowell_hmdhfd}
## Getting US Census data with `tigris`, `tidycensus`

<!--chapter:end:03-week03.Rmd-->


# Week 4 {#week4}

Placeholder


## Environments
## Functions
### Function Components
#### Name
#### Arguments
##### Default values for arguments
##### The `...` argument
#### Body
#### Return value
#### Function environments
## Sampling
### Sampling with replacement
### Sampling without replacement
### Bootstrapping

<!--chapter:end:04-week04.Rmd-->


# Week 5 {#week5}

Placeholder


## Why use version control?
## Why use Git?
## Limitations of version control systems
## A brief Git tutorial
### Setting up Git in RStudio
### Creating a repository
### Tracking changes
### Git bash shell
### Ignoring specific files
### Exploring file change history
### Restoring a previous version
## Conclusion

<!--chapter:end:05-week05.Rmd-->


# Week 6 {#week6}

Placeholder


## The Add Health study data
## Documentation
## Data sets
### `AHwave1_v1.dta`
#### `haven::read_dta()`
#### `readstata13::read.dta13()`
### `21600-0001-Data.dta`
## Searching through documentation
### `pdfgrep`
#### A few use examples
### `pdftools::pdf_text()`
## Conclusion

<!--chapter:end:06-week06.Rmd-->


# Week 7 {#week7}

Placeholder


## Creating value labels
### Creating factor variables
### Creating attributes
## Tabulation
### Raw counts
### Proportions/percentages
### Stratified tabulation

<!--chapter:end:07-week07.Rmd-->


# Week 8 {#week8}

Placeholder


## Scale scoring
### Selecting specific columns
### Comparing participant answers to correct answers
### Scoring across columns{#scoring-across-columns}
## Reordering values

<!--chapter:end:08-week08.Rmd-->


# Week 9 {#week9}

Placeholder


## Substituting text
### `paste()`, `paste0()`
### `sprintf()`
#### Formatting numerical values
#### String substitutions
### `str_replace()`, `str_replace_all()`
## Showing progress
## Turning text into code: `eval(parse(text = "some string"))`
## SQL in R with `RSQLite` and `sqldf`
## Downloading files from password-protected web sites
## Dates and time stamps: `POSIXct` and `lubridate`
## Timing with `Sys.time()` and `difftime()`
## Faster files with `fst()`
## Load US Census Boundary and Attribute Data as 'tidyverse' and 'sf'-Ready Data Frames: `tigris`, `tidycensus`
### Download data
### Mapping census data 
### Creating population pyramids from census data
## Easier regular expressions with `RVerbalExpressions`
## Quick copy from Excel (Windows only)
## Running system commands
## Code styling
## Session information
## Comment out Rmd/HTML code

<!--chapter:end:09-week09.Rmd-->


# Week 10 {#week10}

Placeholder


## R Markdown to Microsoft Word
## R Markdown output 
### R Markdown rendering to specific formats
### Testing `output_type()`
## Advantages and disadvantages of PDF
## Bibliography in R Markdown

<!--chapter:end:10-week10.Rmd-->

