source("loadData.R")

plot4 <- function(){
  #divide area into 2 by 2
  par(mfrow = c(2,2))
  
  #plot1 row 1 col 1
  plot(df$datetime, df$Global_active_power, type="l", ylab = "Global Active Power", xlab = "")
  
  #plot2 row 1 col 2
  plot(df$datetime, df$Voltage, type="l", ylab = "Voltage", xlab = "")
  
  #plot 3 row 2 col 1
  plot(df$datetime, df$Sub_metering_1, type="l", col="black", xlab = "", ylab="Energy sub metering")
  lines(df$datetime, df$Sub_metering_2, col="red")
  lines(df$datetime, df$Sub_metering_3, col="blue")
  legend("topright", 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         col=c("black", "red", "blue"), lwd = 1., bty="n")
  
  #plot 4 row 2 col 2
  plot(df$datetime, df$Global_reactive_power, type="l", ylab = "Global_reactive_power", xlab = "")
}

df <- loaddata("./")
plot4()

#save it
png(filename = "plot4.png")
plot4()
dev.off()
