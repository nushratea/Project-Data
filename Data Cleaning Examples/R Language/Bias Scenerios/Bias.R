install.packages("SimDesign") #installing package
library(SimDesign) #loading package

#Bias function: Compares the actual data with the predicted data to determine whether or not if the actual outcome is greater than the predicted outcome. 
#Unbiased model should be closer to zero.

#Scenerio: compare forecasted temperatures with actual temperatures. 

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp) #comparing the actual data with the predicted data.

#Results: Prediction seemed biased towards lower
#temperatures which, means temperatures aren't as accurate as they should be.

#Scenerio: The gaming store has been keeping a record of how many copies of new games they sell on
#release day.They want to compare those numbers to their actual sales so that they could find
#out if they are ordering new stock according to their actual needs. 

actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)
bias(actual_sales, predicted_sales) #comparing the actual data with the predicted data.

#Results: very far off from zero. Ordered too much stock and need to reevalute their stock ordering practices. 
