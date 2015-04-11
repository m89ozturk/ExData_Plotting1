#### Merve Öztürk plot3.R
# file containing only the specified dates is used as an input.

myData <-read.table("household_power_consumption.txt", sep=";", header=TRUE)

dates <- as.Date(myData$Date, format="%d/%m/%Y")
times <- myData$Time
x <- paste(dates, times)
dt<-strptime(x, format="%Y-%m-%d %H:%M:%S")

# sorry for the German days! "Do" corresponds to Thursday, "Fr" to Friday and "Sa" to Saturday!

png(filename = "Plot3.png", width = 480, height = 480)
plot(x=dt, y=myData$Sub_metering_1, ylab="Energy sub metering", type="l", xlab=NA, col="black")
lines(x=dt, y=myData$Sub_metering_2, col="red")
lines(x=dt, y=myData$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=1)
dev.off()
