# Plot 4:

png("plot4.png")
par(mfrow = c(2, 2))
plot(data$datetime,
     data$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
plot(data$datetime,
     data$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")
plot(data$datetime,
     data$Sub_metering_1,
     type = "l",
     col = 1,
     ylab = "Energy sub metering",
     xlab = "")
lines(data$datetime,
      data$Sub_metering_2,
      col = 2)
lines(data$datetime,
      data$Sub_metering_3,
      type = "l",
      col = 4)
legend("topright",
       legend = sprintf("Sub_metering_%s", 1:3),
       lty = 1,
       col = c(1, 2, 4),
       bty = "n")
plot(data$datetime,
     data$Global_reactive_power,
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime")
dev.off()