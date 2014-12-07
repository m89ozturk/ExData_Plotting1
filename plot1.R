#### Merve Öztürk plot1.R
# file containing only the specified dates are used as an input.

myData <-read.table("household_power_consumption.txt", sep=";", header=TRUE)

hist(myData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Powe (kilowatts)")

png(filename = "plot1.png", width = 480, height = 480)
hist(myData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Powe (kilowatts)")
dev.off()

