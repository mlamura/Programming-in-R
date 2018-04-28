UserData <- setClass(
  "UserData",
slots = c(
  UserName= "character",
  barcode = "numeric",
  totalCheckout= "numeric"
)
)
is.object(UserData)

Patron<- new("UserData", UserName= "Smith, Joe", barcode= "000000001", totalCheckout="forty")
