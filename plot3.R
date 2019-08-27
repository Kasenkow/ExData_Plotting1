# Plot 3:

png("plot3.png")
plot(data$datetime,
     data$Sub_metering_1,
     type = "l",
     col = 1,
     ann = FALSE)
lines(data$datetime,
      data$Sub_metering_2,
      col = 2)
lines(data$datetime,
      data$Sub_metering_3,
      type = "l",
      col = 4)
title(ylab = "Energy sub metering")
legend("topright",
       legend = sprintf("Sub_metering_%s", 1:3),
       lty = 1,
       col = c(1, 2, 4))
dev.off()