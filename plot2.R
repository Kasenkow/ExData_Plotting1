# Plot 2

png("plot2.png")
plot(data$datetime,
     data$Global_active_power,
     type = "l",
     ann = FALSE)
title(ylab = "Global Active Power (kilowatts)")
dev.off()