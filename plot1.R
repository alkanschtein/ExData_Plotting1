setwd('~/0WORKSPACE/0STUDY/Coursera/EDA/W1/ExData_Plotting1/')
dir()

data <- read.csv('../household_power_consumption.txt',
                 sep=';', 
                 na.strings='?',
                 header = TRUE)

data <- subset(data,as.Date(data$Date,format='%d/%m/%Y')=='2007-02-01'|
                 as.Date(data$Date,format='%d/%m/%Y')=='2007-02-02')
png('plot1.png',width = 480, height = 480)
hist(data$Global_active_power,col='red',main='Global Active Power',
     xlab='Global Active Power(kilowatts)',ylab='Frequency')
dev.off()
