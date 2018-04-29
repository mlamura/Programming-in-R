#user object
UserData <- setClass(
  "UserData",
slots = c(
  UserName= "character",
  barcode = "numeric",
  totalCheckout= "numeric"
)
)

UserList= list(
  Username= NULL,
  barcode= 0,
  totalCheckout= 0
)

library(readr)
UserFrame<-read.csv("User Data.csv")
is.data.frame(UserFrame)

validity=function(object)
{
  if((UserFrame$Barcode < 0) || (UserFrame$Checkout < 0)) {
    return("A negative number for one of the fields was given.")
  }
  return(TRUE)
}

validity(UserFrame) #tests for impossible values



x<-mean(UserFrame$Checkouts) #mean of total checkouts
View(x) #print mean


