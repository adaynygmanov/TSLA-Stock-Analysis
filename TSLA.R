## Load libraries
library (quantmod)

## Load data
loadSymbols(c("TSLA"))

# View data
only_2020_values<-TSLA ['2020']
head(only_2020_values);tail(only_2020_values)
data_from_2017_onwards<-TSLA ['2017::']
head(data_from_2017_onwards);tail(data_from_2017_onwards)

## Build charts with trends
chartSeries(TSLA) 
chartSeries(TSLA, multi.col = T,theme = "white", subset = "2015-4::2020-4")
addSMA() #Moving Average
addMACD() #Moving Average convergence/divergence
addBBands()#BollingerBands
addCCI() # Commodity Channel Index
addADX()# Average Directional Movement Index
addCMF() #Chaikin Money Flow
addRSI() # Relative Strength Index

seriesHi(TSLA) #highest prices
seriesLo(TSLA) #lowest prices

## Analysis of Returns
returns_by_day<-dailyReturn(TSLA)
head(returns_by_day); tail(returns_by_day)

returns_by_week<-weeklyReturn(TSLA)
head(returns_by_week); tail(returns_by_week)

returns_by_month<-monthlyReturn(TSLA)
head(returns_by_month); tail(returns_by_month)

returns_by_year<-yearlyReturn(TSLA)
head(returns_by_year); tail(returns_by_year)

TSLA_all_returns<-allReturns(TSLA)
head(TSLA_all_returns); tail(TSLA_all_returns)
