library(sqldf)
acs <- read.csv("getdata-data-ss06pid.csv", header=T, sep=",")
print(sqldf("select distinct AGEP from acs"))