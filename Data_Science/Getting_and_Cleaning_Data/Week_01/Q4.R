library(XML)

doc <- xmlTreeParse("getdata-data-restaurants.xml", useInternal=TRUE)
rootnode <- xmlRoot(doc)
zipcodes = xpathSApply(rootnode,"//zipcode", xmlValue)
print(length(zipcodes[zipcodes == "21231"]))