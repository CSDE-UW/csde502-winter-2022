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
<<<<<<< HEAD
Rendered at <tt>2022-03-11 16:07:56</tt>
=======
Rendered at <tt>2022-03-04 00:46:44</tt>
>>>>>>> 30102f5ff2370c3a3ecdf20f2626c3c01ac56fe8

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
