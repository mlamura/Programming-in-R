barcodeStorage<-as.array(UserFrame$Barcode) #barcode storage array
write.csv(barcodeStorage,file = "barcodeList.csv")#Write files to .csv

pdf('checkoutsPlot.pdf')#Print checkouts plot to PDF file
plot(UserFrame$Checkouts)
dev.off()

pdf('barcodeCheckouts.pdf')
plot(UserFrame$Barcode,UserFrame$Checkouts, main="Patron Checkouts",
     xlab = "Barcode",ylab = "Checkout Total")
