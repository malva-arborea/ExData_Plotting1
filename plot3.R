# Course Project 1 - Exploratory Data Analysis
# Third Task - Print Submeterings 

# Set locale
Sys.setlocale(category = "LC_ALL", locale = "en_US")

# Read the data
mydata <- read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subsetting
mySubSet <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(mySubSet$Global_active_power)
myDateTime <- strptime(paste(mySubSet$Date, mySubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
mySubMetering1 <- as.numeric(mySubSet$Sub_metering_1)
mySubMetering2 <- as.numeric(mySubSet$Sub_metering_2)
mySubMetering3 <- as.numeric(mySubSet$Sub_metering_3)

# Preparing Plot
png("plot3.png", width=480, height=480)

# Plotting
plot(myDateTime, mySubMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(myDateTime, mySubMetering2, type="l", col="red")
lines(myDateTime, mySubMetering3, type="l", col="blue")
legend("topright", c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
