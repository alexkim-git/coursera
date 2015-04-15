library(xlsx)
cols <- 7:15
rows <- 18:23
dat <- read.xlsx("getdata-data-DATA.gov_NGAP.xlsx", sheetIndex = 1,colIndex = cols, rowIndex = rows)
print(sum(dat$Zip*dat$Ext,na.rm=T))


