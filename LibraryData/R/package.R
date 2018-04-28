UserData <- setClass(
  "UserData",
slots = c(
  UserName= "character",
  barcode = "numeric",
  totalCheckout= "numeric"
)
)
is.object(UserData)
