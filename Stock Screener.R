### Libraries ###
library(quantmod)
library(corrgram)
library(corrplot)
library(stringr)
library(ggplot2)
library(dplyr)
library(magrittr)
library(quantstrat)
library(TTR)
library(devtools)
library(IKTrading)
library(FinancialInstrument)
library(PerformanceAnalytics)
library(foreach)
library(quantstrat)
library(blotter)
################


### Watchlist ###

date = "2018-03-10"

#Index and Vix
getSymbols("SPY", from = date)
getSymbols("TQQQ", from = date)
getSymbols("UDOW", from = date)
getSymbols("UPRO", from = date)
getSymbols("SH", from = date)
getSymbols("SPXU", from = date)
getSymbols("SPXS", from = date)
getSymbols("SQQQ", from = date)
getSymbols("SDOW", from = date)
getSymbols("VIXY", from = date)
getSymbols("SVXY", from = date)



#Financials
getSymbols("WFC", from = date)
getSymbols("BAC", from = date)
getSymbols("JPM", from = date)
getSymbols("MA", from = date)
getSymbols("C", from = date)
getSymbols("V", from = date)
getSymbols("DFS", from = date)
getSymbols("AXP", from = date)
getSymbols("MS", from = date)
getSymbols("SCHW", from = date)
getSymbols("BLK", from = date)
getSymbols("COF", from = date)
getSymbols("GS", from = date)
getSymbols("ACN", from = date)
getSymbols("AFL", from = date)
getSymbols("ALL", from = date)
getSymbols("EA", from = date)
getSymbols("ALL", from = date)
getSymbols("PGR", from = date)
getSymbols("MET", from = date)
getSymbols("ETFC", from = date)
getSymbols("TRV", from = date)


           

#Software and Tech
getSymbols("AAPL", from = date)
getSymbols("GOOGL", from = date)
getSymbols("CRM", from = date)
getSymbols("AMZN", from = date)
getSymbols("MSFT", from = date)
getSymbols("INTL", from = date)
getSymbols("CSCO", from = date)
getSymbols("FB", from = date)
getSymbols("SNAP", from = date)
getSymbols("MU", from = date)
getSymbols("AMAT", from = date)
getSymbols("GE", from = date)
getSymbols("ATVI", from = date)
getSymbols("NFLx", from = date)
getSymbols("AMD", from = date)
getSymbols("SQ", from = date)
getSymbols("TWTR", from = date)
getSymbols("T", from = date)
getSymbols("TMUS", from = date)
getSymbols("VZ", from = date)
getSymbols("S", from = date)
getSymbols("NVDA", from = date)
getSymbols("NOK", from = date)
getSymbols("P", from = date)
getSymbols("ADS", from = date)
getSymbols("TXN", from = date)
getSymbols("ADBE", from = date)
getSymbols("ORCL", from = date)
getSymbols("HPE", from = date)
getSymbols("CTL", from = date)
getSymbols("TTWO", from = date)



#Energy
getSymbols("XOM", from = date)
getSymbols("SPWR", from = date)
getSymbols("FSLR", from = date)
getSymbols("CHK", from = date)
getSymbols("JASO", from = date)
getSymbols("SEDG", from = date)
getSymbols("BEP", from = date)
getSymbols("BP", from = date)
getSymbols("CVX", from = date)
getSymbols("CSIQ", from = date)
getSymbols("VLO", from = date)
getSymbols("AR", from = date)
getSymbols("NEE", from = date)
getSymbols("DUK", from = date)
getSymbols("SO", from = date)
getSymbols("D", from = date)
getSymbols("ED", from = date)



#Consumer Stores and Services
getSymbols("WMT", from = date)
getSymbols("WBA", from = date)
getSymbols("COST", from = date)
getSymbols("KSS", from = date)
getSymbols("FL", from = date)
getSymbols("DG", from = date)
getSymbols("DLTR", from = date)
getSymbols("TGT", from = date)
getSymbols("M", from = date)
getSymbols("NKE", from = date)
getSymbols("ADS", from = date)
getSymbols("UAA", from = date)
getSymbols("GPS", from = date)
getSymbols("BBY", from = date)
getSymbols("ANF", from = date)
getSymbols("ROST", from = date)
getSymbols("GME", from = date)
getSymbols("EXPR", from = date)
getSymbols("HD", from = date)
getSymbols("JCP", from = date)
getSymbols("DIS", from = date)
getSymbols("WHR", from = date)
getSymbols("CMCSA", from = date)
getSymbols("TWX", from = date)
getSymbols("FOXA", from = date)
getSymbols("CBS", from = date)
getSymbols("FDS", from = date)
getSymbols("UPS", from = date)




#Food and Drink
getSymbols("MCD", from = date)
getSymbols("CMG", from = date)
getSymbols("YUM", from = date)
getSymbols("K", from = date)
getSymbols("KHC", from = date)
getSymbols("TSN", from = date)
getSymbols("KO", from = date)
getSymbols("MNST", from = date)
getSymbols("PEP", from = date)
getSymbols("CPB", from = date)
getSymbols("HSY", from = date)
getSymbols("SJM", from = date)
getSymbols("SBUX", from = date)
getSymbols("DPZ", from = date)
getSymbols("DNKN", from = date)
getSymbols("JMBA", from = date)
getSymbols("PZZA", from = date)



#Transportation
getSymbols("TSLA", from = date)
getSymbols("F", from = date)
getSymbols("GM", from = date)
getSymbols("TM", from = date)
getSymbols("HMC", from = date)
getSymbols("LUV", from = date)
getSymbols("DAL", from = date)
getSymbols("UAL", from = date)
getSymbols("JBLU", from = date)
getSymbols("AAL", from = date)
getSymbols("ALK", from = date)
getSymbols("UNP", from = date)
getSymbols("SAVE", from = date)



#Healthcare
getSymbols("AMGN", from = date)
getSymbols("ALGN", from = date)
getSymbols("CI", from = date)
getSymbols("GILD", from = date)
getSymbols("PFE", from = date)
getSymbols("MRK", from = date)
getSymbols("P", from = date)
getSymbols("CELG", from = date)
getSymbols("UNH", from = date)
getSymbols("P", from = date)
getSymbols("AGN", from = date)
getSymbols("DGX", from = date)
getSymbols("CVS", from = date)
getSymbols("MRK", from = date)



#Industrials/Comglomerates
getSymbols("CAT", from = date)
getSymbols("DE", from = date)
getSymbols("MMM", from = date)
getSymbols("BA", from = date)
getSymbols("HD", from = date)
getSymbols("PG", from = date)
getSymbols("UTX", from = date)


watchlist <- list(AAL, AAPL, ACN, ADBE, ADS, AFL, AGN, ALGN, ALK, ALL,
                        AMAT, AMD, AMGN, AMZN, ANF, AR, ATVI, AXP, 
                        BA, BAC, BBY, BEP, BLK, BP,
                        C, CAT, CBS, CELG, CHK, CI, CMCSA, CMG, COF,
                        COST, CPB, CRM, CSCO, CSIQ, CTL, CVS, CVX,
                        D, DAL, DE, DFS, DG, DGX, DIS, DLTR, DNKN, DPZ, DUK, 
                        EA, ED, ETFC, EXPR, F, FB, FDS, FL, FSLR, FOXA,
                        GE, GILD, GM, GME, GOOGL, GPS, GS,
                        HD, HMC, HPE, HSY, INTL, JASO, JBLU, JCP, JMBA, JPM,
                        K, KHC, KO, KSS, LUV,
                        M, MA, MCD, MET, MNST, MMM, MRK, MS, MSFT, MU,
                        NEE, NFLX, NKE, NOK, NVDA, ODP, OLED, ORCL, 
                        P, PEP, PFE, PG, PGR, PZZA, ROST, 
                        S, SBUX, SCHW, SDOW, SEDG, SH, SJM, SNAP, SO,
                        SPWR, SPXS, SPXU, SPY, SQ, SQQQ, SVXY,
                        T, TGT, TM, TMUS, TQQQ, TRV, TSLA, TSN, TTWO, TWTR, TWX, TXN,
                        UAA, UAL, UDOW, UNH, UNP, UPRO, UPS, UTX, V, VIXY, VLO, VZ, WHR)


watchlist_names <- data.frame(Ticker = c("AAL", "AAPL", "ACN", "ADBE", "ADS", "AFL", "AGN", "ALGN", "ALK", "ALL",
                  "AMAT", "AMD", "AMGN", "AMZN", "ANF", "AR", "ATVI", "AXP", 
                  "BA", "BAC", "BBY", "BEP", "BLK", "BP",
                  "C", "CAT", "CBS", "CELG", "CHK", "CI", "CMCSA", "CMG", "COF",
                  "COST", "CPB", "CRM", "CSCO", "CSIQ", "CTL", "CVS", "CVX",
                  "D", "DAL", "DE", "DFS", "DG", "DGX", "DIS", "DLTR", "DNKN", "DPZ", "DUK", 
                  "EA", "ED", "ETFC", "EXPR", "F", "FB", "FDS", "FL", "FSLR", "FOXA",
                  "GE", "GILD", "GM", "GME", "GOOGL", "GPS", "GS",
                  "HD", "HMC", "HPE", "HSY", "INTL", "JASO", "JBLU", "JCP", "JMBA", "JPM",
                  "K", "KHC", "KO", "KSS", "LUV",
                  "M", "MA", "MCD", "MET", "MMM", "MNST", "MRK", "MS", "MSFT", "MU",
                  "NEE", "NFLX", "NKE", "NOK", "NVDA", "ODP", "OLED", "ORCL", 
                  "P", "PEP", "PFE", "PG", "PGR", "PZZA", "ROST", 
                  "S", "SBUX", "SCHW", "SDOW", "SEDG", "SH", "SJM", "SNAP", "SO",
                  "SPWR", "SPXS", "SPXU", "SPY", "SQ", "SQQQ", "SVXY",
                  "T", "TGT", "TM", "TMUS", "TQQQ", "TRV", "TSLA", "TSN", "TTWO", "TWTR", "TWX", "TXN",
                  "UAA", "UAL", "UDOW", "UNH", "UNP", "UPRO", "UPS", "UTX", "V", "VIXY", "VLO", "VZ", "WHR"))


####################################


### Look at what quantmod can do ###
#chartSeries(LUV, subset = 'last 2 months', theme = "white")
#addMACD()
#addEMA(n = 15)
#addBBands(sd = 1.8)
#addRSI()
#SPY['2009']



##########Helper Functions##########

graph_ticker <- function(ticker){
  chartSeries(ticker, subset = 'last 40 days', theme = "white", TA="addVo();addMACD();addBBands(sd = 1.8);addEMA(n=15);addRSI()")
}

BandAlert <- function(ticker){
  shortTermOutlook <- tail(BBands(ticker[,2:4], sd = 1.8),4)[,4]
  #4:1 because it'll find the latest patters first
  for(i in 3:1){
    if(shortTermOutlook[i] > 1 && shortTermOutlook[i+1] < .96){
      return("Bearish")
    }
    if(shortTermOutlook[i] < 0 && shortTermOutlook[i+1] > .04){
      return("Bullish")
    }
  }
  return(NA)
}


MACDAlert <- function(ticker){
  MACDTail <- as.data.frame(tail(MACD(ticker[,4]),5))
  MACDTail$Histogram <- MACDTail$macd-MACDTail$signal
  for(i in 3:1){
    #3 days in a row of becoming less negative implies upward momentum
    #Before I had the condition of MACDTail$Histogram[i+2]< or >0, most of the signals from bbands disagreed with macd and almost every stock had a macd symbol. With that last condition, some of the disagreeing macds disappeared while others switched
    if(MACDTail$Histogram[i]+.06<MACDTail$Histogram[i+1] && MACDTail$Histogram[i+1]+.06<MACDTail$Histogram[i+2] && MACDTail$Histogram[i+2]<0 && MACDTail$Histogram[i]< -.6){
      return("Bullish")
    }
    #3 days in a row of becoming less positive implies upward momentum
    if(MACDTail$Histogram[i]>MACDTail$Histogram[i+1] +.06 && MACDTail$Histogram[i+1]>MACDTail$Histogram[i+2] +.06 && MACDTail$Histogram[i+2] >0 && MACDTail$Histogram[i]> .6){
      return("Bearish")
    }
  }
  return(NA)
}

RSIAlert <- function(ticker){
  RSITail <- as.data.frame(tail(RSI(ticker[,4]),5))
  for(i in 4:1){
    if(RSITail[i,]>70 && RSITail[(i+1),]<70){
      return("Bearish")
    }
    if(RSITail[i,]<30 && RSITail[(i+1),]>30){
      return("Bullish")
    }
    return(NA)
  }
}

HasBigDrop <- function(ticker){
  max(as.data.frame(tail(abs(Delt(ticker[,4])),7)))>.06
}

daily_loop <- function(){
  watchlist_length <- length(watchlist)
  
  Bollinger <- rep(0, watchlist_length)
  MACD <- rep(0, watchlist_length)
  RSI <- rep(0, watchlist_length)
  DontWantThese <- rep(FALSE, watchlist_length)
  for(e in 1:watchlist_length){
    Bollinger[e]  <-BandAlert(watchlist[[e]])
    MACD[e] <- MACDAlert(watchlist[[e]])
    RSI[e] <- RSIAlert(watchlist[[e]])
    DontWantThese[e] <- is.na(Bollinger[e]) && is.na(MACD[e]) && is.na(RSI[e]) | HasBigDrop(watchlist[[e]])
  }
  all_stocks <- cbind(watchlist_names, Bollinger, MACD, RSI, DontWantThese)
  all_stocks %>% filter(DontWantThese == FALSE) %>% select(-5) %>% arrange(Bollinger)
}

###########Daily Loop###############

daily_loop()
#graph_ticker()

####################################
watchlist_length <- length(watchlist)

Bollinger <- rep(0, watchlist_length)
MACD <- rep(0, watchlist_length)
RSI <- rep(0, watchlist_length)
DontWantThese <- rep(FALSE, watchlist_length)
for(e in 1:watchlist_length){
  Bollinger[e]  <-BandAlert(watchlist[[e]])
  MACD[e] <- MACDAlert(watchlist[[e]])
  RSI[e] <- RSIAlert(watchlist[[e]])
  DontWantThese[e] <- is.na(Bollinger[e]) && is.na(MACD[e]) && is.na(RSI[e]) | HasBigDrop(watchlist[[e]])
}
all_stocks <- cbind(watchlist_names, Bollinger, MACD, RSI, Filter)
all_stocks %>% filter(DontWantThese == FALSE) %>% select(-5) %>% arrange(Bollinger)
watchlist[111]
