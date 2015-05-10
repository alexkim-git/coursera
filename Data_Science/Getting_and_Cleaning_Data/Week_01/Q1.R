# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here: 
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv 
# 
# and load the data into R. The code book, describing the variable names is here: 
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf 
# 
# How many properties are worth $1,000,000 or more?
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)
housingdata <- read.csv("getdata-data-ss06hid.csv")
data <- housingdata[housingdata$VAL == "24",]$VAL
print(length(data[!is.na(data)]))


