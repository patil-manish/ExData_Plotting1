# Plot matching reference in terms of Data, plot type and colors, Axis, Labels, Legend text and color
# Label and Legend position is not exactly identical wrt reference plots
df <- read.table("household_power_consumption.txt",header=T, sep=";",na.strings="?",nrows=70000, as.is=c(1,2))
filt <- subset(df,Date=="1/2/2007"|Date=="2/2/2007")
par(mfrow = c(1,1))
hist(filt$Global_active_power,col="red",main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()