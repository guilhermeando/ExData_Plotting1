# Description: loads file household_power_consumption.txt and take only dates 
#  2007-2-1 and 2 and convert first variable as Date and second as Time
#
loadCsv <- function() {
  message("loading data...")
  df <- read.csv("household_power_consumption.txt", header=T, sep=";", na.strings="?")
  df <- df[df$Date %in% c("2/2/2007","1/2/2007"), ]
  df$Time = strptime(paste(df$Date,df$Time), format="%d/%m/%Y %H:%M:%S")
  df$Date = as.Date(df$Date, format="%d/%m/%Y")
  df
}

# Description: loads file household_power_consumption.txt and take only dates 
#  2007-2-1 and 2 and convert first variable as Date and second as Time
#
savePngPlot <- function(filename) {
  message(paste("saving '", filename, "'...", sep=""))
  dev.copy(png, file=filename)
  dev.off()
}