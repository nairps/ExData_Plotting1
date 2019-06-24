``` r
knitr::opts_chunk$set(echo = TRUE)
```

The dataset
-----------

The *Individual household electric power consumption Data Set* is collected from the UC Irvine Machine Learning Repository and made available through the course web site (<https://github.com/rdpeng/ExData_Plotting1>)

------------------------------------------------------------------------

Creating a directory for the dataset
------------------------------------

``` r
# make the directory named "data" if it does not exist  
if(!file.exists("data")){
  dir.create("data")
}
```

------------------------------------------------------------------------

------------------------------------------------------------------------

Dataset download
----------------

``` r
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,
  destfile="./data/household_power_consumption.zip",
  method="curl")
list.files("./data")
```

    ## [1] "household_power_consumption.zip"

``` r
unzip ("./data/household_power_consumption.zip",
  exdir = "./data")
list.files("./data")
```

    ## [1] "household_power_consumption.txt" "household_power_consumption.zip"

``` r
#dataset download details
dateDownloaded <- date()
dateDownloaded
```

    ## [1] "Sun Jun 23 18:39:49 2019"

------------------------------------------------------------------------
