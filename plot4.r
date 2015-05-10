library(sqldf)
file = "C:\\Coursera\\Exploratory data analysis\\Course Project\\household_power_consumption.txt"
sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"'
data <- read.csv.sql(file, sql = sql, header = TRUE, sep = ";")
data$Time <- paste(data$Date, data$Time)
data$Time <- strptime(data$Time, "%d/%m/%Y %H:%M:%S")
png("c:\\Coursera\\Exploratory data analysis\\Course Project\\plot4.png")
par(mfrow = c(2,2))
with(data, {
  
  plot(Time,Global_active_power,type="l", ylab = "Global Active Power(Kilowatts)", xlab = "")
  plot(Time, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
  plot(Time, Sub_metering_1,type = "l", ylab = "Energy sub metering", xlab = "")
  with(subset(data), points(Time, Sub_metering_2, type = "l", col = "red"))
  with(subset(data), points(Time, Sub_metering_3, type ="l", col = "blue"))
  legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = c(1,1,1),col = c("black", "red", "blue"),cex = 0.75, xjust = 1)
  plot(Time, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
  
})
dev.off()
