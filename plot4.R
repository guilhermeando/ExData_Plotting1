source("common.R")

# Description: generate the plot 4
# "https://github.com/guilhermeando/ExData_Plotting1/raw/master/figure/unnamed-chunk-5.png"
#
plot4 <- function() {
  df <- loadCsv()
  message("ploting...")

  pardefault <- par(mfrow=c(2,2), mar=c(4,4,2,1))
  plot(df$Time, df$Global_active_power, type="l", main="", xlab="", ylab="Global Active Power (kilowatts)")

  plot(df$Time, df$Voltage, type="l", main="", xlab="datetime", ylab="Voltage")
  
  plot(df$Time, df$Sub_metering_1, main="", ylab="Energy sub metering", xlab="", type="n")
  points(df$Time, df$Sub_metering_1, type="l", col="black")
  points(df$Time, df$Sub_metering_2, type="l", col="red")
  points(df$Time, df$Sub_metering_3, type="l", col="blue")
  legend("topright", pch="_", col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  plot(df$Time, df$Global_reactive_power, type="l", main="", xlab="datetime", ylab="Global_reactive_power")
  
  savePngPlot("plot4.png")
  
  par(pardefault)
  message("done!")
}

