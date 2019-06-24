####################################################################################################
#
#+ Dataset download details are provided in the Data_Download.md
#+ Downloaded dataset is available in the folder "data"
#+ The downloaded dataset has been read, formatted, filtered and saved using format.And.Filter.R 
#+ The filtered dataset is saved to the directory "data" and is named "dat.for.2days.RData"
#
####################################################################################################


#loading 2-day household energy usage data (2007-02-01 and 2007-02-02) 
load(file = "./data/dat.for.2days.RData")
ls()

#+ plot-4
png(filename = "plot4.png",
   width = 480, height = 480, units = "px")

par(mfrow = c(2, 2))

##################
#
#+plot-4.1
#
##################
with (dat.for.2days, 
	plot(datetime, Global_active_power, type="l", xlab="", 
		ylab="Global Active Power", main=""
	)
)

##################
#
#plot-4.2
#
##################
with (dat.for.2days, 
	plot(
		datetime, Voltage, type="l",  
		ylab="Voltage",
		main=""
	)
)

##################
#
#plot-4.3
#
##################
with (
	dat.for.2days, 
	plot(datetime, Sub_metering_1, type="l", col="black", xlab="", 
		ylab="Energy sub metering", main="")
)	

lines (
	dat.for.2days$datetime, 
	dat.for.2days$Sub_metering_2, 
	col="red", xlab="",
	ylab="", main=""
)
	
lines (
	dat.for.2days$datetime,
	dat.for.2days$Sub_metering_3, 
	col="blue", xlab="",
	ylab="", main=""
)	

# Add legend
legend(	
	"topright", 
	legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1
)



##################
#
#plot-4.4
#
##################
with (dat.for.2days, 
	plot(
		datetime, Global_reactive_power, type="l",  
		main=""
	)
)


dev.off()