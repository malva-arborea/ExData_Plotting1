# Printing Exploratory Data

# Read the data
mydata <- read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subsetting
mySubSet <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(mySubSet$Global_active_power)
myDateTime <- strptime(paste(mySubSet$Date, mySubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Preparing Plot
png("plot2.png", width=480, height=480)

# Plotting
plot(myDateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

