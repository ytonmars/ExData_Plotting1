source("loadData.R")

plot2 <- function(){
  par(mfrow = c(1,1))
  plot(df$datetime, df$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (killowatts)")  
}

#plot to screen
df <- loaddata("./")
plot2()

#save it
png(filename = "plot2.png")
plot2()
dev.off()