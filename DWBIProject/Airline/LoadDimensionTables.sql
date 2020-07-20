Create table Dim_Country(
Country_ID int Identity(1,1),
Country varchar(50))

Insert into Dim_Country(Country)
Select Distinct Country from RawRanking

Create table Dim_Airline(
Airline_ID int Identity (1,1),
Airline varchar(50))

Insert into Dim_Airline (Airline)
Select Distinct Airline from RawEmployee

Create table Dim_Rank(
Rank_ID int Identity (1,1),
Rank varchar(50))

Insert into Dim_Rank (Rank)
Select Distinct Rank from RawEmployee

