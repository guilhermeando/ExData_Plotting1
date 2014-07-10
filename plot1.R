source("common.R")

# Description: generate the plot 1 
# "https://github.com/guilhermeando/ExData_Plotting1/raw/master/figure/unnamed-chunk-2.png"
#
plot1 <- function() {
  df <- loadCsv()
  message("ploting...")
  hist(df$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
  savePngPlot("plot1.png")
  message("done!")
}

