# Plot matching reference in terms of Data, plot type and colors, Axis, Labels, Legend text and color
# Label and Legend position is not exactly identical wrt reference plots
df <- read.table("household_power_consumption.txt",header=T, sep=";",na.strings="?",nrows=70000, as.is=c(1,2))
filt <- subset(df,Date=="1/2/2007"|Date=="2/2/2007")
filt$dtime <- strptime(paste(filt$Date,filt$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
par(mfrow = c(1,1))
plot(filt$dtime, filt$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(filt$dtime, filt$Sub_metering_1, type="l", col="black")
lines(filt$dtime, filt$Sub_metering_2, type="l", col="red")
lines(filt$dtime, filt$Sub_metering_3, type="l", col="blue")
legend("topright", lwd=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), y.intersp=0.5)
dev.copy(png, file="plot3.png")
dev.off()
