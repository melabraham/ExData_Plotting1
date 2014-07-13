## program to download the individual household electric power consumption data 
## zipfile and unzip the text file
## read data from 02/01/2007 to 02/02/2007 and create a csv file to be read 
## by the 4 plot functions 


getdata <- function() {

   fname <- "household_power_consumption.zip"
   fname1 <- "household_power_consumption.txt"

   if(!file.exists(fname)) {
     fileUrl <- 'http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip?accessType=DOWNLOAD'
     download.file(fileUrl, destfile=fname)
   }

   if(!file.exists(fname1)) {  
    data <- read.table(unz(fname,"household_power_consumption.txt"))
   }
   else {
    data <- read.table(fname1)
   }

   data1 <- read.table(data, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))       
   data1 <- data1[(data1$Date == "1/2/2007") | (data1$Date == "2/2/2007"),]   
   data1$DateTime <- strptime(paste(data1$Date, data1$Time), "%d/%m/%Y %H:%M:%S")     
   data1
  }
