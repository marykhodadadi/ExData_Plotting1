
Dataset <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?",
                      header = FALSE, nrows = 2880,
                      skip = 66637)

colnames(Dataset) <- c("Date", "Time", "Global_active_power", "Global_reactive_power",
                       "Voltage", "Global_intensity", "Sub_metering_1", 
                        "Sub_metering_2", "Sub_metering_3")

# Creating Plot 1
hist(Dataset$Global_active_power, col = "red",
     xlab = "Global active power(kilowatts)",
     main = "Global Active Power")




