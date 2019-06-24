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

#+ plot-3
png(
	filename = "plot3.png",
    	width = 480, height = 480, units = "px"
)

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


dev.off()


