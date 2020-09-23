
Create schema WizardShop;
Use WizardShop;
  
CREATE TABLE PERSON( 
PersonID 		varchar(15) 		NOT NULL, 
IsEmployee 		varchar(3)				NOT NULL, 
IsCustomer 		varchar(3)				NOT NULL, 
LastName 		varchar(20)		    NOT NULL, 
FirstName       varchar(20)			NOT NULL,
Address			varchar(30)			NOT NULL,
City			varchar(20)			NOT NULL,
State			varchar(2)				NOT NULL,
Zip				varchar(5)				NOT NULL,
Phone			varchar(16)				NOT NULL,
Email			Varchar(40)			NOT NULL,
 	CONSTRAINT 	PersonPK 	PRIMARY KEY(PersonID)); 	
    
CREATE TABLE CUSTOMER( 
PersonID 					varchar(15) 		NOT NULL, 
CreditCardType 				varchar(20)		NOT NULL, 
CreditCardNumber    		varchar(20)			NOT NULL, 
CreditCardExpirationDate 	varchar(20)		    NOT NULL, 
 	CONSTRAINT 	CustomerFK 	FOREIGN KEY(PersonID) 					
  REFERENCES PERSON(PersonID) 
				ON UPDATE NO ACTION 
				ON DELETE CASCADE );
                
                
CREATE TABLE EMPLOYEE( 
PersonID 		varchar(15) 		NOT NULL, 
DateOfHire 		varchar(20)			NOT NULL, 
HourlyPayRate 	varchar(20) 		NOT NULL,  
 	

CONSTRAINT 	EmployeeFK 	FOREIGN KEY(PersonID) 					
  REFERENCES PERSON(PersonID)  
				ON UPDATE NO ACTION 
				ON DELETE CASCADE   );     
                


CREATE TABLE SALE( 
SaleID 				    varchar(15) 		NOT NULL, 
SaleDate 				varchar(20)		NOT NULL, 
SubTotal 				varchar(20)		NOT NULL,  
Tax						varchar(20)		NOT NULL,
Total					varchar(20)		NOT NULL,
CustomerPersonID		varchar(20)		NOT NULL,
EmployeePersonID		varchar(20)			NOT NULL,
CONSTRAINT 	SalePK 	PRIMARY KEY(SaleID),
CONSTRAINT 	CustPersonFK 	FOREIGN KEY(CustomerPersonID) 					
  REFERENCES CUSTOMER(PersonID)  
				ON UPDATE NO ACTION 
				ON DELETE NO ACTION ,
                
CONSTRAINT 	EmplPersonFK 	FOREIGN KEY(EmployeePersonID) 					
  REFERENCES EMPLOYEE(PersonID)  
				ON UPDATE NO ACTION 
				ON DELETE NO ACTION   ); 
                
                
CREATE TABLE ITEM( 
ItemID 				    varchar(15) 		NOT NULL, 
ItemDescription 		Varchar(20)			NOT NULL, 
ReorderPointQuantity 	varchar(20)			NULL,  
QuantityOnHand			varchar(20)				NOT NULL,
ItemPrice				varchar(20)		NOT NULL,
CONSTRAINT 	ItemPK 	PRIMARY KEY(ItemID));



CREATE TABLE SALE_ITEM (
SaleID						varchar(20)		NOT NULL, 
SaleItemID					varchar(15) 		NOT NULL,
ItemPrice					varchar(15) 		NOT NULL,
Quantity					varchar(20)			NOT NULL,
ExtendedPrice				varchar(20) 		NOT NULL, 
ItemID 						varchar(20) 		NOT NULL,  


CONSTRAINT 	Sale_itemPK 	PRIMARY KEY(SaleID, ItemID),

CONSTRAINT 	SaleItemSaleFK 	FOREIGN KEY(SaleID) 					
  REFERENCES SALE(SaleID)  
				ON UPDATE NO ACTION 
				ON DELETE CASCADE,

CONSTRAINT 	SaleItemItemFK 	FOREIGN KEY(ItemID) 					
  REFERENCES ITEM(ItemID)  
				ON UPDATE NO ACTION 
				ON DELETE NO ACTION ); 
                
                


CREATE TABLE VENDOR( 
VendorID 				varchar(15) 			NOT NULL, 
CompanyName 			varchar(30)				NOT NULL, 
ContactLastName 		varchar(35)				NOT NULL, 
ContactFirstName 		varchar(35)		    	NOT NULL, 
Address					Varchar(40)				NOT NULL,
City					varchar(20)				NOT NULL,
State					varchar(4)					NOT NULL,
Zip						varchar(20)				NOT NULL,
Phone					varchar(20)					NOT NULL,
Fax						varchar(20)					NOT NULL,
Email					Varchar(40)				NOT NULL,
 	CONSTRAINT 	VendorPK 	PRIMARY KEY(VendorID));                 
                
                
                
CREATE TABLE ORDERS (
InvoiceNumber			int(4)					NOT NULL, 
DateOrdered				varchar(20)			 		NOT NULL,
DateReceived			varchar(20)		 		NULL,
QuantityOrdered			varchar(20)				NOT NULL,
ItemCost				varchar(20)			NOT NULL, 
OrderSubTotal 			decimal(6,2)			NOT NULL, 
OrderTax				decimal(6,2)			NOT NULL, 
OrderTotalCost			decimal(8,2)			NOT NULL,
ItemID					varchar(20) 			NOT NULL, 
VendorID				varchar(15) 			NOT NULL, 
CONSTRAINT 	OrderPK 	PRIMARY KEY(InvoiceNumber),
CONSTRAINT 	OrderItemFK 	FOREIGN KEY(ItemID) 					
  REFERENCES ITEM(ItemID)  
				ON UPDATE NO ACTION 
				ON DELETE NO ACTION,
CONSTRAINT 	OrderVendorFK 	FOREIGN KEY(VendorID) 					
  REFERENCES VENDOR(VendorID)  
				ON UPDATE NO ACTION 
				ON DELETE NO ACTION );   
    
    