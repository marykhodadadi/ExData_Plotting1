

Dataset <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?",
                      col.names = names(dataset),header = FALSE, nrows = 2880,
                      skip = 66637)

## Creating Plot 4
par(mfrow= c(2,2), mar=c(2,3,2,2))
plot(x= Dataset$Datetime, y= Dataset$Global_active_power ,type = "l",
     xlab = "", ylab = "Global Active Power")
plot(x= Dataset$Datetime, y= Dataset$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")
plot(x= Dataset$Datetime, y= Dataset$Sub_metering_1, type = "l", col="black",
     xlab = "", ylab = "Energy Sub etering")
points(x=Dataset$Datetime, y= Dataset$Sub_metering_2, type = "l", col= "red")
points(x=Dataset$Datetime, y= Dataset$Sub_metering_3, type = "l", col= "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 2, bty = 'n', cex = 0.85)

plot(x= Dataset$Datetime, y= Dataset$Global_reactive_power,
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")  
