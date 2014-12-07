#read data
d <- read.csv("~/Rdata/ExploratoryDataAnalysis/Project1/exdata-data-household_power_consumption/exdata-data-household_power_consumption.csv", quote="", na.strings="?", stringsAsFactors=FALSE)

#check the data
head(d)

#check the data types. Because the data has "?" RStudio has an option to flag that
#and change it to NA otehrwise the data will be char subsequent problems will ensue
str(d)

#get 2007-02-01 and 2007-02-02 data (d1)
#d1 <-d[66638:69517,];

#alteranatively
d1 <- subset(d, Date == "1/2/2007" | Date == "2/2/2007")

#display histogram
hist(d1$Global_active_power,col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", freq = 
       TRUE)

#NOT NECESSARY
#need to get days using package(lubridate)
#df = data.frame(date=d1[,1])
#df$day <- weekdays(as.Date(df$date))
#$df
#add new column
#create new column with days
#d1["Day"] <- df[,2]

#set the time field
time <- paste(d1$Date, d1$Time)
d1$Time <- strptime(time, "%d/%m/%Y %H:%M:%S")

#plot
plot(d1$Time, d1$Global_active_power,'l',ylab = "Global Active Power (kilowatts)", xlab = "")

#plot with multiple series
plot(d1$Time,d1$Sub_metering_1,'l', ylab = 'Energy sub-metering', xlab = "") 
lines(d1$Time,d1$Sub_metering_2,col= 'red')
lines(d1$Time,d1$Sub_metering_3,col= 'blue')
#add legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") ,col=c('black', 'red', 'blue'),lty=1)


# 4 figures arranged in 2 rows and 2 columns
par(mfrow=c(2,2))

#plot
plot(d1$Time, d1$Global_active_power,'l',ylab = "Global Active Power", xlab = "", cex.lab = 0.75)

#plot
plot(d1$Time,d1$Voltage,'l', xlab = 'datetime', ylab = 'Voltage')


#plot with multiple series
plot(d1$Time,d1$Sub_metering_1,'l', ylab = 'Energy sub-metering', xlab = "", cex.lab = 0.75) 
lines(d1$Time,d1$Sub_metering_2,col= 'red')
lines(d1$Time,d1$Sub_metering_3,col= 'blue')
#add legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") ,col=c('black', 'red', 'blue'),bty = "n",lty=1, cex = 0.7)

#plot
plot(d1$Time,d1$Global_reactive_power,'l', xlab = 'datetime',ylab = 'Global_reactive_power', cex.lab = 0.75 )
  