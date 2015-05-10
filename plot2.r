library(sqldf)
file = "C:\\Coursera\\Exploratory data analysis\\Course Project\\household_power_consumption.txt"
sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"'
data <- read.csv.sql(file, sql = sql, header = TRUE, sep = ";")
datetime <- paste(data$Date, data$Time)
date.time <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
plot(date.time,data$Global_active_power,type="l", ylab = "Global Active Power(Kilowatts", xlab = "")
dev.copy(png,file="C:\\Coursera\\Exploratory data analysis\\Course Project\\plot2.png")
dev.off()
