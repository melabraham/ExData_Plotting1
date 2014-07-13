## read househould electric power comnsumption data
## plot graph3

source("main1.R")

Plot3 <- function() { 

   data1 <- getdata()   
   png(filename = "plot3.png", width = 480, height = 480, units = "px") 
    par(bg="gray")
   cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")  
   plot(data1$DateTime, data1$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")   
   lines(data1$DateTime, data1$Sub_metering_2, type="l", col="red") 
   lines(data1$DateTime, data1$Sub_metering_3, type="l", col="blue")   
   legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)    
   
   dev.off()

   }

Plot3()