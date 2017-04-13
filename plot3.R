plot3 <- function(){
  par(mfrow = c(1,1))
  plot(df$datetime, df$Sub_metering_1, type="l", col="black", xlab = "", ylab="Energy sub metering")
  lines(df$datetime, df$Sub_metering_2, col="red")
  lines(df$datetime, df$Sub_metering_3, col="blue")
  legend("topright", 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         col=c("black", "red", "blue"), lwd = 1.)  
}

df <- loaddata("./")
plot3()

#save it
png(filename = "plot3.png")
plot3()
dev.off()