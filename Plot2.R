
Dataset <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?",
                      col.names = names(dataset),header = FALSE, nrows = 2880,
                      skip = 66637)

library(lubridate)
Dataset$Datetime <- ymd_hms(paste(Dataset$Date, Dataset$Time))

## Creating Plot 2
plot(x=Dataset$Datetime, y=Dataset$Global_active_power, type = "l",
     ylab = "Global Active Power(Kilowatts)", xlab = "")

