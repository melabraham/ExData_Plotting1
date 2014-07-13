## read househould electric power comnsumption data
## plot graph1

source("main1.R")

Plot1 <- function() {
    data1 <- getdata()   
    png(filename = "plot1.png", width = 480, height = 480, units = "px") 
    par(bg="gray")
    hist(data1$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red") 
    dev.off()

 }


Plot1()