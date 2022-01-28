# from what I can see these packages are required

# see https://statisticsglobe.com/r-install-missing-packages-automatically
#   https://www.vikram-baliga.com/blog/2015/7/19/a-hassle-free-way-to-verify-that-r-packages-are-installed-and-loaded

#specify the packages of interest
packages = c(
    "animation",
    "bookdown",
    "captioner",
    "countrycode",
    "curl",
    "demogR",
    "demography",
    "devtools",
    "dplyr",
    "DT",
    "flextable",
    "fst",
    "ggplot2",
    "gridExtra",
    "haven",
    "htmltools",
    "idbr",
    "HMDHFDplus",
    "kableExtra",
    "keyring",
    "knitr",
    "leaflet",
    "lubridate",
    "magrittr",
    "pacman",
    "pander",
    "pdftools",
    "plyr",
    "psych",
    "purrr",
    "readstata13",
    "rmapshaper",
    "rmarkdown",
    "RVerbalExpressions",
    "scales",
    "sf",
    "sqldf",
    "stargazer",
    "styler",
    "tibble",
    "tidycensus",
    "tidyverse"
)

#use this function to check if each package is on the local machine
#if a package is installed, it will be loaded
#if any are not, the missing package(s) will be installed
package.check <- lapply(packages, FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
        install.packages(x, dependencies = TRUE, repos = "https://ftp.osuosl.org/pub/cran/")
    }
})

# github packages to install
github_packages <- (c("hadley/emo", "ihmeuw-demographics/demCore"))

# install if necessary. the quite = TRUE option will not do anything if the latest version is installed
github.package.check <- lapply(github_packages, FUN = function(x) {
    devtools::install_github(x, dependencies = TRUE, quiet = TRUE)
})
