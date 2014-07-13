## read househould electric power comnsumption data
## plot graph2

source("main1.R")

Plot2 <- function() { 
   data1 <- getdata()   
   png(filename = "plot2.png", width = 480, height = 480, units = "px") 
   par(bg="gray")
   plot(data1$DateTime, data1$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")  
   dev.off()
  }

Plot2()