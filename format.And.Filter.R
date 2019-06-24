
power.data.subset <- read.table(
	"./data/household_power_consumption.txt", 
	header=T,
	na.strings = "?", 
	stringsAsFactors=F,
	sep=";", 
	nrow=100)
household_power_consumption_all <- read.table(	
	"./data/household_power_consumption.txt",
	na.strings = "?", 
	header=T, 
	stringsAsFactors=F,
	sep=";",
	colClasses = sapply(power.data.subset, class))

household_power_consumption_all$Date.Formatted<- as.Date(
	household_power_consumption_all$Date, 
	format="%d/%m/%Y")

datetime <- paste(
	household_power_consumption_all$Date.Formatted, 
	household_power_consumption_all$Time)

household_power_consumption_all$datetime <- strptime(
	datetime,
	"%Y-%m-%d %H:%M:%S")

dat.for.2days <- subset(
	household_power_consumption_all, 
	Date.Formatted == "2007-02-02" | Date.Formatted == "2007-02-01")

save(dat.for.2days, 
	file = "./data/dat.for.2days.RData")

