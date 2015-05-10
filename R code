library(sqldf)
file = "C:\\Coursera\\Exploratory data analysis\\Course Project\\household_power_consumption.txt"
sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"'
data <- read.csv.sql(file, sql = sql, header = TRUE, sep = ";")
with(data, hist(Global_active_power, xlab = "Global Active Power(kilowatts)",main = "Global Active Power", col = "red"))
dev.copy(png,file="C:\\Coursera\\Exploratory data analysis\\Course Project\\plot1.png")
dev.off()
