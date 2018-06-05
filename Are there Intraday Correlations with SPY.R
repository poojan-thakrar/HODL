library(dplyr)
library(readr)
library(stringr)
library(corrgram)
library(ggplot2)
data <- read.csv("SPY_Data.csv")

##Real##
volume_data <- data %>% filter(Volume != 0)
volume_data$Local.time <- as.character(volume_data$Local.time)
for(i in 1:nrow(volume_data)){
  volume_data$Time[i] = str_sub(volume_data$Local.time[i], 12, 16)
  volume_data$Date[i] = str_sub(volume_data$Local.time[i], 1, 10)
}
impt_data <- volume_data %>% filter(Time == "06:30" | Time == "06:40" | Time == "06:45" | Time == "06:50" | Time == "06:55" | Time == "07:00" | Time == "11:00" | Time == "12:00" | Time == "12:59")
##5 min
zeros <- rep(0,length(unique(impt_data$Date)))
DailyPrice <- data.frame("Date" = as.character(unique(impt_data$Date)))
DailyPrice$"t6.30" = zeros
DailyPrice$"t6.40" = zeros
DailyPrice$"t6.45" = zeros
DailyPrice$"t6.50" = zeros
DailyPrice$"t6.55" = zeros
DailyPrice$"t7" = zeros
DailyPrice$"t11" = zeros
DailyPrice$"t12" = zeros
DailyPrice$"t1" = zeros
##1
i = 1
j = 1
while(DailyPrice[[2]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:30"){
    DailyPrice$t6.30[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}

i = 18
j = 141
while(DailyPrice[[2]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:30"){
    DailyPrice$t6.30[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}


##2
i = 1
j = 1
while(DailyPrice[[3]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:40"){
    DailyPrice$t6.40[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}


i = 18
j = 1
while(DailyPrice[[3]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:40"){
    DailyPrice$t6.40[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}



##3
i = 1
j = 1
while(DailyPrice[[4]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:45"){
    DailyPrice$t6.45[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}


i = 18
j = 1
while(DailyPrice[[4]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:45"){
    DailyPrice$t6.45[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}



##4
i = 1
j = 1
while(DailyPrice[[5]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:50"){
    DailyPrice$t6.50[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}


i = 18
j = 1
while(DailyPrice[[5]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:50"){
    DailyPrice$t6.50[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}



##5
i = 1
j = 1
while(DailyPrice[[6]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:55"){
    DailyPrice$t6.55[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}


i = 18
j = 1
while(DailyPrice[[6]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "06:55"){
    DailyPrice$t6.55[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}


##6

i = 1
j = 1
while(DailyPrice[[7]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "07:00"){
    DailyPrice$t7[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}


i = 18
j = 1
while(DailyPrice[[7]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "07:00"){
    DailyPrice$t7[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}


##7

i = 196
j = 1
while(DailyPrice[[8]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "11:00"){
    DailyPrice$t11[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}



##8

i = 196
j = 1
while(DailyPrice[[9]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "12:00"){
    DailyPrice$t12[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}

##9

i = 196
j = 1
while(DailyPrice[[10]][i] == 0){
  if(impt_data$Date[j] == DailyPrice$Date[i] & impt_data$Time[j] == "12:59"){
    DailyPrice$t1[i] = impt_data$Close[j]
    i = i + 1
  }
  j = j + 1
}

####



### HardCode ###
DailyPrice[[2]][16] = 237.58

DailyPrice[[3]][16] = 237.46

DailyPrice[[4]][16] = 237.45

DailyPrice[[5]][16] = 237.45

DailyPrice[[6]][16] = 237.46

DailyPrice[[7]][16] = 237.44

DailyPrice[[8]][16] = 237.65

DailyPrice[[9]][16] = 237.738

DailyPrice[[10]][16] = 237.748

DailyPrice2 = DailyPrice%>%slice(c(-17, -94, -107,-113, -158, -195))

View(DailyPrice2)

DailyPrice2[,1]
DailyPrice[[2]]
DailyPrice[,1]

#######################################################################################################################################
DailyPrice2

EarlyDifference <- DailyPrice2$t6.50 - DailyPrice2$t6.30
LateDifference <- DailyPrice2$t12 - DailyPrice2$t6.30

mean(abs(EarlyDifference))
mean(abs(LateDifference))


#############################################################Analysis##################################################################

View(DailyPrice2)

OnesnZeros <- DailyPrice2
DailyPrice2[[9]][130]
for(j in 2:310){
  for(i in 2:10){
    if(OnesnZeros[[i]][j]>DailyPrice2[[10]][j-1]){
      OnesnZeros[[i]][j] = 1
    }
    else if(OnesnZeros[[i]][j]<DailyPrice2[[10]][j-1]){
      OnesnZeros[[i]][j] = -1
    }
    else if(OnesnZeros[[i]][j]==DailyPrice2[[10]][j-1]){
      OnesnZeros[[i]][j] = 0
    }
  }
  
}
View(OnesnZeros)
OnesnZeros <- OnesnZeros%>%slice(-1)

corrgram(OnesnZeros)
###If the 6:30 is up from the previous day, all times are up from the previous day



##########3
Difference <- data.frame(d1 = DailyPrice2$t6.40-DailyPrice2$t6.30)
Difference$d2 = DailyPrice2$t6.45-DailyPrice2$t6.40
Difference$d3 = DailyPrice2$t6.50-DailyPrice2$t6.45
Difference$d4 = DailyPrice2$t6.55-DailyPrice2$t6.50
Difference$d5 = DailyPrice2$t7-DailyPrice2$t6.55
Difference$d6 = DailyPrice2$t11-DailyPrice2$t7
Difference$d7 = DailyPrice2$t12-DailyPrice2$t11
Difference$d8 = DailyPrice2$t1-DailyPrice2$t12

View(Difference)
corrgram(Difference, panel = panel.pts)
?corrgram
cor(Difference$d7[156:304], Difference$d8[156:304])
####### There are weak correlations between differences throughout the day

Difference$color[1:152] = "red"
View(Difference)
plot(Difference$d7[1:152], Difference$d8[1:152])
sum(Difference$color == "blue")

ggplot(data = Difference, aes(x = d7, y = d8)) + geom_point(color = Difference$color)


### Slight backtesting? ###
bank <- data.frame(money = 10000)

i = 1
for(i in 1:304){
  if(DailyPrice2$t12[i]>DailyPrice2$t11[i]){
    shares = (tail(bank,1))/DailyPrice2$t12[i]
    bank = rbind(bank, shares*DailyPrice2$t1[i])
  }
}

nrow(bank)
sum(Difference$d7>0)
tail(bank,1)
(((impt_data[[5]][2769]-impt_data[[2]][1])/impt_data[[2]][1])+1)*10000
plot(bank$money)
bank$money
