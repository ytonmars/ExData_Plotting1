library(lubridate)
#this function loads the data file which is stored in the specified directory

loaddata <- function(pathToDirectory) {
    setwd(pathToDirectory)
    
    #read all the column names first
    names <- names(read.table("household_power_consumption.txt", sep=";", header=TRUE, nrows = 1))
  
    #we precalculated the first and last index of the data we are interested 
    lineToSkip <- 66636
    lineToRead <- 69516 - 66637 + 1
    
    #load data from household_power_consumption.txt by skipping "lineToSkip" and read only "lineToRead" rows
    df <- read.table("household_power_consumption.txt", sep=";", header=TRUE, 
                     colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), 
                     na.strings = "?", skip = lineToSkip, nrows = lineToRead)
    
    #assign column names 
    colnames(df) <- names
    
    #concatenate date and time
    df$datetime <- paste(df$Date, df$Time)
    
    #convert datetime to Date object
    df$datetime <- dmy_hms(df$datetime)
    
    #return the dataframe loaded
    return(df)
}