setwd('~/0WORKSPACE/0STUDY/Coursera/EDA/W1/ExData_Plotting1/')
dir()

data <- read.csv('../household_power_consumption.txt',
                 sep=';', 
                 na.strings='?',
                 header = TRUE)

data <- subset(data,as.Date(data$Date,format='%d/%m/%Y')=='2007-02-01'|
                 as.Date(data$Date,format='%d/%m/%Y')=='2007-02-02')

png('plot3.png',width = 480, height = 480)
plot(data$Sub_metering_1,type='l',col='black', xaxt='n',xlab='',ylab='Energy sub metering')
lines(data$Sub_metering_2,col='red')
lines(data$Sub_metering_3,col='blue')
len<-length(data$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty=c(1,1,1))
dev.off()
