setwd('~/0WORKSPACE/0STUDY/Coursera/EDA/W1/ExData_Plotting1/')
dir()

data <- read.csv('../household_power_consumption.txt',
                 sep=';', 
                 na.strings='?',
                 header = TRUE)

data <- subset(data,as.Date(data$Date,format='%d/%m/%Y')=='2007-02-01'|
                 as.Date(data$Date,format='%d/%m/%Y')=='2007-02-02')

png('plot2.png',width = 480, height = 480)
plot(data$Global_active_power,type='l', xaxt='n',xlab='',ylab='Global Active Power(kilowatts)')
len<-length(data$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
dev.off()
