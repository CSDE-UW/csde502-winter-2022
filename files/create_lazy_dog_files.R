name <- function(variables) {

}

if (condition) {

}

# Thu Mar 04 21:06:04 2021 ------------------------------

"a", "b", "1", "2",

<-


s <- str_split("the quick brown fox jumps over the lazy dog", pattern = " ", simplify = TRUE)



for(i in 1:length(s)){
    # make a number of the format "001"
    mynum <- sprintf("%03d", i)
    filepat <- paste0("str_", mynum)
    cat(s[i], file = tempfile(pattern = filepat, fileext = ".txt"))
}

fnames <- list.files(path = tempdir(), pattern = "str.*", full.names = TRUE)
zip(zipfile = "C:/junk/quickfox.zip", files = fnames, flags = c("j"))
