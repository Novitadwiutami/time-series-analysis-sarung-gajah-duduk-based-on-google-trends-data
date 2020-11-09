#Read the Data
data=read.csv("E:/ITS/MATERI KULIAH/SEMESTER 7/STATISTICS MACHINE LEARNING/TUBES/INPUT.csv",header=T)
datatrain=data[1:60,]
datatest=data[61:72,]

## Fit neural network
# load librabry
library(neuralnet)

#fit neural network
set.seed(2)
NN=neuralnet(data.transform~lag1+lag3+lag8+lag12,
             datatrain,hidden=0,linear.output=T)

#plot neural network
plot(NN)

##Prediction using neural network
predict_testNN=compute(NN,datatest[,c(2:5)])
predict_testNN=(predict_testNN$net.result*(max(data$data.transform)-min(data$data.transform)))+min(data$data.transform)
predict_testNN

