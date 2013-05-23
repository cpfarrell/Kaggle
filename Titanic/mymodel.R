dtree1 = function() {
    library(rpart)

    #set.seed(1) # Only need to set the seed if we want reproducable results

# Load Train data and make some categories
    readData = read.csv("train.csv")
#    print(summary(readData))
    maxFare = max(readData$fare)
    theBreaks = c(0,7,10,20,30,40,50,75,100,maxFare)
    cutFare = cut(readData$fare,breaks=theBreaks,include.lowest=T)
    theBreaks = c(0,10,20,30,40,50,60,100)
    cutAge = cut(readData$age,breaks=theBreaks,include.lowest=T)
    theBreaks = c(0,1,2,100)
    cutParch = cut(readData$parch,breaks=theBreaks,include.lowest=T)
    theBreaks = c(0,1,2,100)
    cutSibsp = cut(readData$sibsp,breaks=theBreaks,include.lowest=T)
# Put the data into a new frame without all the categories we are ignoring

    split = readData$survived
#    alive = readData[split]
#    dead = readData[split]

#dfr<-data.frame(var1=rnorm(100), var2=rnorm(100), var3=rnorm(100, 160, 10), var4=rnorm(100, 27, 6))
#plot( subset( dfr, var3 < 155 & var4 > 27, select = c( var1, var2 ) ) )

    plot( subset( readData, survived==1, select = c(fare, age ) ), col='red' )
    points( subset( readData, survived==0, select = c(fare, age ) ), col='blue' )



    baseData = data.frame(cbind(readData$survived,
        cutFare,
        readData$pclass,
        readData$embarked,
        cutAge,
        cutParch,
        cutSibsp,
        readData$sex))
    
    # Names are good
    names(baseData)[1] = "survived"
    names(baseData)[2] = "fare"
    names(baseData)[3] = "pclass"
    names(baseData)[4] = "embarked"
    names(baseData)[5] = "age"
    names(baseData)[6] = "parch"
    names(baseData)[7] = "sibsp"
    names(baseData)[8] = "sex"

# Split the data into train and test
#    index = sample(1:nrow(baseData),as.integer(nrow(baseData)*.60),replace=FALSE)
#    train = baseData[index,]
#    test = baseData[-index,]

# Decision tree

#    basicmodel = rpart(survived~., data=train, method="class")
#    str(basicmodel)
    # Plot is just for fun
#    plot(basicmodel)
#    text(basicmodel, use.n=T)

#    # Run against the data we put aside earlier
#    prediction = predict(basicmodel, newdata=test, type='class')

#    # How did we do?
#    table(prediction, test$survived)
#    x=table(prediction, test$survived)
#    correct=(x[1,1]+x[2,2])/(sum(x))
#    print(correct)
}