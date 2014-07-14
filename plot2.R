# Plot matching reference in terms of Data, plot type and colors, Axis, Labels, Legend text and color
# Label and Legend position is not exactly identical wrt reference plots
df <- read.table("household_power_consumption.txt",header=T, sep=";",na.strings="?",nrows=70000, as.is=c(1,2))
filt <- subset(df,Date=="1/2/2007"|Date=="2/2/2007")
filt$dtime <- strptime(paste(filt$Date,filt$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
par(mfrow = c(1,1))
plot(filt$dtime, filt$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(filt$dtime, filt$Global_active_power, type="l")
dev.copy(png, file="plot2.png")
dev.off()