library(fpp2)

# 2.1 ts objects --------------------------------------------------
y <- ts(c(123,39,78,52,110), start=2012)
y <- ts(c(123,39,78,52,110), end=2016)

y <- ts(1:12, start=2003, frequency = 12)
y

# “frequency” is the number of observations
# Annual	    1
# Quarterly	  4
# Monthly	   12
# Weekly	   52

# hourly seasonality (frequency = 60)
# daily  seasonality (frequency = 24 * 60 = 1440)
# weekly seasonality (frequency = 24 * 60 * 7 = 10080)
# annual seasonality (frequency = 24 * 60 * 365.25= 525960)

# 2.2 Time plots --------------------------------------------------

# the weekly economy passenger load on Ansett Airlines 
# between Australia’s two largest cities.
str(melsyd)

autoplot(melsyd[, "Economy.Class"]) +
  ggtitle("Economy class passengers: Melbourne-Sydney") +
  xlab("Year") +
  ylab("Thousands")

# autoplot : automatically produces an appropriate plot of 
#            whatever you pass to it in the first argument

autoplot(a10) +
  ggtitle('Antidiabetic drug sales') +
  ylab("$ million") +
  xlab("Year")

# a clear and increasing trend
# a strong seasonal pattern that increases in size
# sudden drop at the start of each year