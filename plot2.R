#### Merve Öztürk plot2.R
# file containing only the specified dates are used as an input.

myData <-read.table("household_power_consumption.txt", sep=";", header=TRUE)

dates <- as.Date(myData$Date, format="%d/%m/%Y")
times <- myData$Time
x <- paste(dates, times)
dt<-strptime(x, format="%Y-%m-%d %H:%M:%S")

# sorry for the German days! "Do" corresponds to Thursday, "Fr" to Friday and "Sa" to Saturday!

png(filename = "plot2.png", width = 480, height = 480)
plot(x=dt, y=myData$Global_active_power, ylab="Global Active Power (kilowatts)", type="l", xlab=NA)
dev.off()

