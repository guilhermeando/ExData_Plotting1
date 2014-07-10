source("common.R")

# Description: generate the plot 3
# "https://github.com/guilhermeando/ExData_Plotting1/raw/master/figure/unnamed-chunk-4.png"
#
plot3 <- function() {
  df <- loadCsv()
  message("ploting...")
  plot(df$Time, df$Sub_metering_1, main="", ylab="Energy sub metering", xlab="", type="n")
  points(df$Time, df$Sub_metering_1, type="l", col="black")
  points(df$Time, df$Sub_metering_2, type="l", col="red")
  points(df$Time, df$Sub_metering_3, type="l", col="blue")
  legend("topright", pch="_", col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  savePngPlot("plot3.png")
  message("done!")
}

