
# Importing dataset
Dataset <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?",
                      col.names = names(dataset),header = FALSE, nrows = 2880,
                      skip = 66637)

## Creating Plot 3
plot(x= Dataset$Datetime, y= Dataset$Sub_metering_1, type = "l", col="black",
     xlab = "", ylab = "Energy Sub Metering")
points(x= Dataset$Datetime, y= Dataset$Sub_metering_2, type = "l", col= "red")
points(x= Dataset$Datetime, y= Dataset$Sub_metering_3, type = "l", col= "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ),
       col = c("black", "red", "blue"), lty = 1)