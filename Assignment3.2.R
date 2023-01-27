## Assignment 3.2R Solutions - 2022 Programming in Psychological Science
#
# Record of Revisions
#
# Date            Programmer              Descriptions of Change
# ====         ================           ======================
# 27-Jan-23      Xiaoyi Lin (14216817)         Original code


#Q3.2R.1
#Answer
#Function 1:
remind_me <- function(){
  mom_birthday <- "1973-07-05"
  dad_birthday <- "1970-01-26"
  print(mom_birthday)
  print(dad_birthday)
}
remind_me()

#Function 2:
cheat <- function(question_number){
  if(question_number == 1){
    grades <- rnorm(60, 85, 3)
    hist(grades)
    print("grades <- rnorm(60, 85, 3)
          hist(grades)")
  }
  if(question_number == 7){
    ggplot(data = ChickWeight) +
      geom_smooth(mapping = aes(x = Time, y = weight), method = "lm")
    print("ggplot(data = ChickWeight) + geom_smooth(mapping = aes(x = Time, y = weight), method = 'lm')")
  }
  if(question_number == 12){
    install.packages("quantmod")
    library(quantmod)
    setwd("/Users/linxiaoyi/Downloads/")
    stock_IBM <- read.csv("MacroTrends_Data_Download_IBM.csv")
    IBM_stock_value_2022 <-
      xts(
        cbind(
          open = stock_IBM$open,
          high = stock_IBM$high,
          low = stock_IBM$low,
          close = stock_IBM$close,
          volume = stock_IBM$volume
        ),
        as.POSIXct(stock_IBM$date)
      )
    chartSeries(IBM_stock_value_2022)
    print("install.packages('quantmod')
library(quantmod)
setwd('/Users/linxiaoyi/Downloads/')
stock_IBM <- read.csv('MacroTrends_Data_Download_IBM.csv')
IBM_stock_value_2022 <-
  xts(
    cbind(
      open = stock_IBM$open,
      high = stock_IBM$high,
      low = stock_IBM$low,
      close = stock_IBM$close,
      volume = stock_IBM$volume
    ),
    as.POSIXct(stock_IBM$date)
  )
chartSeries(IBM_stock_value_2022)")
  }
}


#Q3.2R.2
make_art <- function(seed) {
  set.seed(seed)
  mydata <- runif(700,min = 0,max = 1)
  mydata2 <- rexp(700, 1)
  mydata3 <- mydata*pi
  plot(mydata2, mydata3, type = "l")
  }








