s <- "R is a powerful tool for data analysis and statistical computing."
n <- c("Alice","Bob Smith","Charlie Brown","DAVID")

cat("Length:", nchar(s), "\nNames length:", nchar(n), "\n\n")
cat("Upper:", toupper(n), "\nLower:", tolower(n), "\n\n")
cat("Substr:", substr(s,1,10), "\nSubstring:", substring(s,12,21), "\n\n")
cat("Paste:", paste("Total length", nchar(s)), "\n")
cat("Paste0:", paste0(n,"X"), "\n")
cat("Collapse:", paste(n, collapse=" | "), "\n\n")
cat("Search:", grepl("data analysis", s),
    "Position:", regexpr("data analysis", s), "\n\n")
cat("Split text:", strsplit(s," ")[[1]], "\n")
cat("Split date:", strsplit("2025-12-09","-")[[1]], "\n\n")
cat("Sub:", sub("data","big data",s), "\n")
cat("Gsub:", gsub("statistical","numerical",s), "\n")
cat("Trim:", trimws("  Trim Me!  "))