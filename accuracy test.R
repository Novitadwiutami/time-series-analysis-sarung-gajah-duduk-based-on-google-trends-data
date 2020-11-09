library(tseries)
library(forecast)
#MODEL TERBAIK
data=read.table("E:/ITS/MATERI KULIAH/SEMESTER 7/STATISTICS MACHINE LEARNING/TUBES/forecast.txt", header=TRUE, sep="\t")
#REGRESI TIME SERIES
accuracy(as.ts(data[,2]),as.ts(data[,3]))
#NAIVE
accuracy(as.ts(data[,2]),as.ts(data[,4]))
#NN HL
accuracy(as.ts(data[,2]),as.ts(data[,5]))
#NN NHL
accuracy(as.ts(data[,2]),as.ts(data[,6]))
#SVR
accuracy(as.ts(data[,2]),as.ts(data[,7]))
