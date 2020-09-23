/* In a file called QAWS-ViewsTriggers.sql

(1) Write a SQL statement to create a view called SaleSummary View which will contain the:
SALE.SaleID, SALE.SaleDate, SALE_ITEM.Quantity, ITEM.ItemDescription, SALE.Total, in that order.
Then write a query to return all of the rows of this new view ordered by SaleID.
*/

CREATE VIEW SaleSummary AS
SELECT SALE.SaleID, SALE.SaleDate, SALE_ITEM.Quantity, ITEM.ItemDescription, SALE.Total
FROM SALE, SALE_ITEM, ITEM;

SELECT * FROM (SaleSummary)
order by SaleID;



/**

(2) Create a SQL statement to create a view called CustomerSaleSummaryView which will
list the SALE.SaleID, SALE.SaleDate, PERSON.LastName, PERSON.FirstName, ITEM.ItemDescription,
ITEM.ItemPrice in that order. Order them by SaleID.
*/

CREATE VIEW CustomerSaleSummaryView AS
SELECT SALE.SaleID, SALE.SaleDate, PERSON.LastName, PERSON.FirstName, ITEM.ItemDescription,
ITEM.ItemPrice
FROM SALE, PERSON, ITEM;

SELECT * FROM (CustomerSaleSummaryView)
order by SaleID;

/*

(3) Create a trigger called CreditCardExpCheck that will cause a data constraint on the CUSTOMER table and 
wont allow a CreditCardExpirationDate to be inserted that is before today's date. Today's date can be determined 
with the function: CURDATE().
*/


DELIMITER //
CREATE TRIGGER CreditCardExpCheck
BEFORE INSERT ON CUSTOMER FOR EACH ROW 
BEGIN 
IF NEW.CreditCardExpirationDate < CURDATE() THEN 
SIGNAL SQLSTATE '45000';
END IF;
END
//DELIMITER ;




/* In files called QAWS-InsertSale.sql and QAWS-InsertSaleItem.sql
*/




DELIMITER //
CREATE PROCEDURE InsertSale	
(IN newSaleID	varChar(25),    
 IN	newSaleDate	varChar(25),    
 IN newSubTotal Varchar(20),    
 IN newTax	varChar(20),    
 IN newTotal 	varChar(20),    
 IN newCustomerPersonID	varChar(30)
  IN newEmployeePersonID varChar(30)
)	
BEGIN	
    DECLARE	InsertCursor	CURSOR FOR			
SELECT	SaleID,SaleDate			
FROM	SALE           	
DECLARE continue	
HANDLER FOR NOT FOUND SET done = 1;    




DELIMITER //
CREATE PROCEDURE InsertSaleItem	
(IN NewSaleID	varChar(25),    
 IN	NewSaleItemID	varChar(25),    
 IN NewItemPrice Varchar(100),    
 IN newQuantity	varChar(3),    
 IN newExtendedPrice 	varChar(8),    
 IN newItemID	varChar(30))	
BEGIN	

DECLARE	SaleItemCursor	CURSOR FOR			
SELECT	newSaleID		
FROM	SALE_ITEM            	
DECLARE continue
WHERE SALE.SaleID = SALE_ITEM.SaleID	
HANDLER FOR NOT FOUND SET done = 1
;  
