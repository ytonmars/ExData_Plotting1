plot1 <- function(){
  par(mfrow = c(1,1))
  hist(df$Global_active_power, xlab="Global Active Power (killowatts)", main="Global Active Power", col="red")  
}

df <- loaddata("./")
plot1()

png(filename = "plot1.png")
plot1()
dev.off()