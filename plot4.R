setwd('~/0WORKSPACE/0STUDY/Coursera/EDA/W1/ExData_Plotting1/')
dir()

data <- read.csv('../household_power_consumption.txt',
                 sep=';', 
                 na.strings='?',
                 header = TRUE)

data <- subset(data,as.Date(data$Date,format='%d/%m/%Y')=='2007-02-01'|
                 as.Date(data$Date,format='%d/%m/%Y')=='2007-02-02')

png('plot4.png',width = 480, height = 480)
par(mfrow=c(2,2))

plot(data$Global_active_power,type='l', xaxt='n',xlab='',ylab='Global Active Power')
len<-length(data$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)

plot(data$Voltage,type='l', xaxt='n',xlab='datetime',ylab='Voltage')
len<-length(data$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)

plot(data$Sub_metering_1,type='l',col='black', xaxt='n',xlab='',ylab='Energy sub metering')
lines(data$Sub_metering_2,col='red')
lines(data$Sub_metering_3,col='blue')
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),bty='n',cex=0.8,col=c('black','red','blue'),lty=c(1,1,1))

plot(data$Global_reactive_power,type='l', xaxt='n',xlab='datetime',ylab='Global_reactive_power')
len<-length(data$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
dev.off()


