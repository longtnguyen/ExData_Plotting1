data <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", as.is=TRUE, dec=".")
monthData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(monthData$Date, monthData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power <- as.numeric(monthData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
