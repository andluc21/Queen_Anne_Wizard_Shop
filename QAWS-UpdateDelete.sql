

#In it write a query to update the quantity on hand of Pine Wands to include 10 returned Pine Wands.

UPDATE ITEM
SET QuantityOnHand = "10"
WHERE ItemId = "6" ;


INSERT INTO  ITEM(
  ItemID  , ItemDescription , ReorderPointQuantity ,QuantityOnHand	,ItemPrice	)
VALUES ("17",	"Magic Candles"	,NULL	,"5"	,"10.00"	);

 INSERT INTO  SALE(
  SaleID , SaleDate ,SubTotal ,Tax ,Total	,CustomerPersonID ,EmployeePersonID	)
VALUES ("8",	"2020-03-15",	"50.00"       ,"4.56",	"44.56",	"11",	"2");

 INSERT INTO  SALE_ITEM(
 SaleID, SaleItemID ,Quantity,ItemPrice,ExtendedPrice,ItemID )
VALUES ("8",	"4"	,"5"	,"10.00","50.00",	"17");



DELETE FROM SALE_ITEM
WHERE SaleID = "8";

select *
From SALE_ITEM
Where SaleID = "8";

/** It did also delete the row ! and left it Null , This is because of our 
Constraint ON DELETE CASCADE,  if a row of the referenced table is deleted, then all matching rows in the 
referencing table are deleted. */