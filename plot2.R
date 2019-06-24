####################################################################################################
#
#+ Dataset download details are provided in the "Data_Download.md"
#+ Downloaded dataset is available in the folder "data"
#+ The downloaded dataset has been read, formatted, filtered and saved using "format.And.Filter.R" 
#+ The filtered dataset is saved to the directory "data" ("dat.for.2days.RData")
#
####################################################################################################


#loading 2-day household energy usage data (2007-02-01 and 2007-02-02) 
load(file = "./data/dat.for.2days.RData")
ls()

#+ plot-2
png(filename = "plot2.png",
    width = 480, height = 480, units = "px")
with (dat.for.2days, 
	plot(datetime, Global_active_power, type="l", xlab="", 
		ylab="Global Active Power (kilowatts)", main="")
)	
dev.off()

