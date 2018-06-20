rm(list=ls(all=TRUE))



# Let's load our dataset and call it data

data=read.table('data/DATA_3.01_CREDIT.csv',sep=',',header=TRUE) # The function read.table enables us to read flat files such as .csv files



# Now let's have a look at our variables and see some summary statistics

str(data) # The str() function shows the structure of your dataset and details the type of variables that it contains

summary(data) # The summary() function provides for each variable in your dataset the minimum, mean, maximum and quartiles



hist(data$Rating) # Produce a histogram of the credit scores

cor(data[,c(1:5,10)]) # Compute the correlation between all the numerical variables of the sample



linreg=lm(Rating~.,data=data) # Estimate a linear regression model of Rating as a function of everything else.



cor(linreg$fitted.values,data$Rating) # Computes the correlation between the fitted values and the actual ones

plot(data$Rating,linreg$fitted.values) # Plot the fitted values vs. the actual ones



summary(linreg) # Reports the results of the regression



plot(data$Balance,data$Rating) # Allows to visualize the relationship between Balance and Rating

plot(data$Income,data$Rating) # Allows to visualize the relationship between Income and Rating

