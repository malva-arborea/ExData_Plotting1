# Course Project 1 - Exploratory Data Analysis
# First Task - Print Global Active Power

# Read the data
mydata <- read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subsetting
mySubSet <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(mySubSet$Global_active_power)

# Preparing Plot
png("plot1.png", width=480, height=480)

# Plotting
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

