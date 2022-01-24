#bias in r
install.packages('SimDesign')
library(SimDesign)
actual_value<- c(68,70,34,53,23,53)
predicted_Value <-c(56,67,32,44,22,50)
bias(actual_value, predicted_Value)
## dhg
