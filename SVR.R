data1=read.csv("E:/ITS/MATERI KULIAH/SEMESTER 7/STATISTICS MACHINE LEARNING/TUBES/INPUT.csv",header=T)
train=data1[1:60,]
test=data1[61:72,]

library(e1071)
# e1071 untuk model svr

# train
model.SVR = svm(data.transform~., train, C=0.1)
summary(model.SVR)

#test
pred.SVR = predict(model.SVR, newdata=test) # memprediksi data berdasarkan data testing
pred.SVR
