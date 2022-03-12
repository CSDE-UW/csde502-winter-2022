# Assignment support files {#assignment_files}


```r
# path to this file name
if (!interactive()) {
    fnamepath <- knitr::current_input(dir = TRUE)
}
```

## R Markdown Template
For weekly lessons: [template.Rmd](files/template.Rmd).

## Assignment 1
[file_naming.Rmd](files/file_naming.Rmd)

<hr>
Rendered at <tt>2022-03-12 10:49:14</tt>

## Source code
File is at R:/Project/CSDE502/2022/csde502-winter-2022-main/11-assignment-files.Rmd.

### Source code for this document


```r
# path to this file name
if (!interactive()) {
    fnamepath <- knitr::current_input(dir = TRUE)
}

cat(readLines(fnamepath), sep = '\n')
```

### Complete Rmd code


```r
cat(readLines(fnamepath), sep = '\n')
```

````
# Assignment support files {#assignment_files}

```{r fileamepath}

# path to this file name
if (!interactive()) {
    fnamepath <- knitr::current_input(dir = TRUE)
}

```

## R Markdown Template
For weekly lessons: [template.Rmd](files/template.Rmd).

## Assignment 1
[file_naming.Rmd](files/file_naming.Rmd)

<hr>
Rendered at <tt>`r Sys.time()`</tt>

## Source code
File is at `r fnamepath`.

### Source code for this document

```{r ref.label=knitr::all_labels(), echo=TRUE, eval=FALSE}
```

### Complete Rmd code

```{r comment=''}
cat(readLines(fnamepath), sep = '\n')
```
````
