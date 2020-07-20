setwd("C:/Users/MOLAP/Documents/OneDrive - National College of Ireland/DWBIProject/Airline")
Passengers = read.csv("WikipediaData.csv")


Passengers <- Passengers[,-c(20:22)]

colnames(Passengers) <- c("Rank","Country","Airline","2019","2018","2017","2016","2015","2014","2013","2012","2011"
                          ,"2010","2009","2008","2007","2006","Fleet","Destinations")

#Deleted the following columns because they had too many na values
Passengers$`2019`= NULL
Passengers$`2014`= NULL
Passengers$`2013`= NULL
Passengers$`2012`= NULL
Passengers$`2011`= NULL
Passengers$`2010`= NULL
Passengers$`2009`= NULL
Passengers$`2008`= NULL
Passengers$`2007`= NULL
Passengers$`2006`= NULL

#Deleted Fleet and Destination coloumns because they were irrelevant to me
Passengers$Fleet = NULL
Passengers$Destinations = NULL

Passengers$Airline = sub(" ","_",Passengers$Airline)
Passengers$Airline = sub(" ","_",Passengers$Airline)

Passengers$Airline = sub("SmartWings_Group_","SmartWings_Group",Passengers$Airline)
Passengers$Airline = sub("Icelandair_","Icelandair",Passengers$Airline)
Passengers$Airline = sub("Norwegian_Air_","Norwegian_Air",Passengers$Airline)

# I deleted the rows with more than two na values.
Passengers <- Passengers[-c(43),]
Passengers <- Passengers[-c(39),]

sum(is.na(Passengers))

#replace na values with the median 
AE <- c(Passengers[17,4],Passengers[17,5],Passengers[17,6],Passengers[17,7])
MedAE <- median(AE, na.rm = T)
Passengers[17,4][is.na(Passengers[17,4])] <- MedAE

Jet2 <- c(Passengers[18,4],Passengers[18,5],Passengers[18,6],Passengers[18,7])
MedJet2 <- median(Jet2, na.rm = T)
Passengers[18,4][is.na(Passengers[18,4])] <- MedJet2

flybe <- c(Passengers[19,4],Passengers[19,5],Passengers[19,6],Passengers[19,7])
MedFlybe <- median(flybe, na.rm = T) 
Passengers[19,(4:7)][is.na(Passengers[19,(4:7)])] <- MedFlybe

LOT <- c(Passengers[21,4],Passengers[21,5],Passengers[21,6],Passengers[21,7])
MedLOT <- median(LOT, na.rm = T) 
Passengers[21,4][is.na(Passengers[21,4])] <- MedLOT

SWGroup <- c(Passengers[22,4],Passengers[22,5],Passengers[22,6],Passengers[22,7])
MedSW <- median(SWGroup, na.rm = T)
Passengers[22,7][is.na(Passengers[22,7])] <- MedSW

Virgin <- c(Passengers[25,4],Passengers[25,5],Passengers[25,6],Passengers[25,7])
MedV <- median(Virgin, na.rm = T)
Passengers[25,4][is.na(Passengers[25,4])] <- MedV

blueair <- c(Passengers[26,4],Passengers[26,5],Passengers[26,6],Passengers[26,7])
MedBlu <- median(blueair, na.rm = T) 
Passengers[26,4][is.na(Passengers[26,4])] <- MedBlu

Volotea <- c(Passengers[27,4],Passengers[27,5],Passengers[27,6],Passengers[27,7])
MedVol <- median(Volotea, na.rm = T)
Passengers[27,7][is.na(Passengers[27,7])] <- MedVol

Belevia <- c(Passengers[32,4],Passengers[32,5],Passengers[32,6],Passengers[32,7])
MedBel <- median(Belevia, na.rm = T)
Passengers[32,(4:7)][is.na(Passengers[32,(4:7)])] <- MedBel

AS <- c(Passengers[34,4],Passengers[34,5],Passengers[34,6],Passengers[34,7])
MedAS <- median(AS, na.rm = T)
Passengers[34,4][is.na(Passengers[34,4])] <- MedAS

Tarom <- c(Passengers[36,4],Passengers[36,5],Passengers[36,6],Passengers[36,7])
MedTarom <- median(Tarom, na.rm = T)
Passengers[36,4][is.na(Passengers[36,4])] <- MedTarom

AA <- c(Passengers[37,4],Passengers[37,5],Passengers[37,6],Passengers[37,7])
medianAA <- median(AA, na.rm = T)
Passengers[37,(6:7)][is.na(Passengers[37,(6:7)])] <- medianAA

Luxair <- c(Passengers[40,4],Passengers[40,5],Passengers[40,6],Passengers[40,7])
MedLux <- median(Luxair, na.rm = T)
Passengers[40,4][is.na(Passengers[40,4])] <- MedLux

Adria <- c(Passengers[45,4],Passengers[45,5],Passengers[45,6],Passengers[45,7])
MedAdria <- median(Adria, na.rm = T)
Passengers[45,4][is.na(Passengers[45,4])] <- MedAdria


write.csv(Passengers, "RawData_Passengers.csv", row.names = F)
