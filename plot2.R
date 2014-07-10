source("common.R")

# Description: generate the plot 2
# "https://github.com/guilhermeando/ExData_Plotting1/raw/master/figure/unnamed-chunk-3.png"
#
plot2 <- function() {
  df <- loadCsv()
  message("ploting...")
  plot(df$Time, df$Global_active_power, type="l", main="", xlab="", ylab="Global Active Power (kilowatts)")
  savePngPlot("plot2.png")
  message("done!")
}

