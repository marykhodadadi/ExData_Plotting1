
Dataset <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?",
                      col.names = names(dataset),header = FALSE, nrows = 2880,
                      skip = 66637)
dim(Dataset)
names(Dataset)
head(Dataset)

# Creating Plot 1
hist(Dataset$Global_active_power, col = "red",
     xlab = "Global active power(kilowatts)",
     main = "Global Active Power")




