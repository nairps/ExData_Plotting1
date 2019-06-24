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

#+ plot-1
png(filename = "plot1.png",
    width = 480, height = 480, units = "px")
hist(dat.for.2days$Global_active_power, 
	main="Global Active Power", 
	xlab="Global Active Power (kilowatts)", 
	col="red" )
dev.off()

