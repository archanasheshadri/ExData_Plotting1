library(sqldf)
file = "C:\\Coursera\\Exploratory data analysis\\Course Project\\household_power_consumption.txt"
sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"'
data <- read.csv.sql(file, sql = sql, header = TRUE, sep = ";")
data$Time <- paste(data$Date, data$Time)
data$Time <- strptime(data$Time, "%d/%m/%Y %H:%M:%S")
png("c:\\Coursera\\Exploratory data analysis\\Course Project\\plot3.png")
with(data,plot(Time, Sub_metering_1,type = "l", ylab = "Energy sub metering", xlab = ""))
with(subset(data), points(Time, Sub_metering_2, type = "l", col = "red"))
with(subset(data), points(Time, Sub_metering_3, type ="l", col = "blue"))
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = c(1,1,1),col = c("black", "red", "blue"),cex = 0.75, xjust = 1)
dev.off()
