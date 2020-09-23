use WizardShop;


 
INSERT INTO PERSON (PersonID,IsEmployee,IsCustomer,LastName,FirstName,Address,City,	
State,Zip,Phone,Email)
VALUES 
("1", "Yes","No","Potter","Harry","123 Hero Lane","Seattle",	"WA",	98121,	"206-555-1001",	"Harry.Potter@gmail.com" ),
("2",	"Yes","No"	,"Granger"	,"Hermione", "2245 14th Avenue", "Seattle"	, "WA" ,	98104	, "206-555-2458",	"Hermione.Granger@gmail.com"),
("3",	"Yes", "No",	"Weasley","Ron", "2245 14th Avenue"	,"Seattle" , "WA" , 98104,	"206-555-7774"	,"Ron.Weasley@gmail.com"),
("4",	"Yes",	"No",	"Snape","Severus", "6667 Black Road",	"Seattle",	"WA",	98106	,"206-555-5842"	,"Severus.Snape@gmail.com"), 
("5",	"Yes" ,	"No","Malfoy"	,"Draco"	,"999 Slytherin Avenue",	"Seattle","WA"	,98107,	"206-555-6699",	"Draco.Malfoy@gmail.com"),
("6","No",	"Yes", "Scamander"	,"Newt", "2323 Fantastic Road"	, "Seattle",	"WA", 	98101	,"206-555-4885", "Newt.Scamander@gmail.com"),
("7",	"No",	"Yes",	"Black"	,"Sirius"	, "9001 Wolfkin Way" ,	"Seattle",	"WA"	,98121	,"206-555-5278","Sirius.Black@gmail.com"),
("8","No",	"Yes"	,"McGonagall",	"Minerva", "1119 Wizarding Avenue",	"Chicago"	,"IL",	60007,	"312-555-1212", "Minerva.McGonagall@gmail.com"),
("9","No","Yes"	,"Umbridge",	"Delores", "12121 Pink Street",	"Seattle",	"WA"	,98121,	"206-555-9977", "Delores.Umbridge@gmail.com"),
("10","No",	"Yes","Chang"	,"Cho", "8312 89th Avenue",	"Seattle","WA"	,98111,"206-555-8579", "Cho.Chang@gmail.com"),
("11","No",	"Yes",	"Slughorn",	"Horace",	"903 Spells Road" ,	"Seattle","WA"	,98104	,"206-555-9333",	"Horace.Slughorn@gmail.com"),
("12","No","Yes",	"Goldstein",	"Tina",	"1092 12th Avenue",	"Seattle"	,"WA" ,98105,	"206-555-7599","Tina.Goldstein@gmail.com" 


);

  
                
INSERT INTO CUSTOMER (
   
PersonID, CreditCardType, CreditCardNumber, CreditCardExpirationDate)
VALUES 
("6",	"Visa",	"1234-5678-9123",	"2019-01-15"),
("7",	"Mastercard"	,"2345-6789-1234",	"2020-05-16"),
("8"	,"Visa",	"3456-7891-2345",	"2020-09-12"),
("9",	"Visa"	,"4567-8912-3456",	"2019-02-05"),
("10",	"Amex",	"5678-9123-4567"	,"2023-02-19"),
("11"	,"Mastercard",	"6789-1234-5678",	"2022-10-31"),
("12"	,"Visa"	,"7891-2345-6789"	,"2021-11-12"
);	



INSERT INTO EMPLOYEE ( PersonID, DateOfHire, HourlyPayRate )
VALUES
("1",	"2016-01-01"	,"19.00"),
("2",	"2017-02-15",	"21.50"),
("3",	"2018-03-15"	,"20.25"),
("4",	"2016-06-21",	"17.50"),
("5",	"2017-11-12"	,"16.00"
);
                
  INSERT INTO  SALE(
  SaleID , SaleDate ,SubTotal ,Tax ,Total	,CustomerPersonID ,EmployeePersonID	)
VALUES ("1",	"2018-11-26",	"1080.00"       ,"109.08",	"1189.08",	"6",	"1"),
("2"	,"2018-11-27",	"500.00",	"50.50"	     ,"550.50",	"7",	"4"),
("3",	"2018-11-28",	"340.00"	,"34.34"	,"374.34"	,"8",	"3"),
("4",	"2018-11-28",	"120.00"	,"12.12"	,"132.12"	,"9"	,"5"),
("5","2018-11-29",	"350.00"	,"35.35"	,"385.35",	"10","1"),
("6","2018-11-30",	"125.00",	"12.62",    "137.62","11",	"2"),
("7"	,"2018-12-01",	"140.00",	"14.14",	"154.14"	,"12",	"5"

);

 INSERT INTO  ITEM(
  ItemID  , ItemDescription , ReorderPointQuantity ,QuantityOnHand	,ItemPrice	)
VALUES ("1",	"Ash Wand"	,"10"	,"20"	,"100.00"	),
("2",	"Cedar Wand",	"12",	"21"	,"120.00"),
("3",	"Cypress Wand",	"12"	,"15",	"110.00"),
("4",	"Elm Wand",	"12"	,"24",	"140.00"),
("5",	"Maple Wand",	"12",	"21",	"135.00"),
("6",	"Pine Wand",	"15",	"20",	"150.00"	),
("7",	"Magic Broom" ,	"20"	,"45"	,"60.00"),
("8",	"Invisibility Cloak" ,	3	,4	,"1200.00"),	
("9",	"Quidditch Ball",	50,	74,"30.00"),
("10",	"Flying Carpet",	3,	5,	"1000.00"),
("11","Time Turner" ,	3	,4,	"5000.00"),
("12"	,"Anti-Cheating Quill"	,10	,30,	"5.00"),
("13","	Cauldron",	30,	60,	"30.00"),
("14",	"Spellotape",	20	,40	,"20.00"),
("15",	"School Robe",	100,	243	,"40.00"),
("16", "Polyjuice Potion",	20,	33	,"100.00"


	);





       INSERT INTO  SALE_ITEM(
 SaleID, SaleItemID ,Quantity,ItemPrice,ExtendedPrice,ItemID )
VALUES ("1",	"1"	,"3"	,"120.00","360.00",	"2"),
("1",	"2"	, "2"	,"140.00","280.00",	"4"),
("1"	,"3",	"4",	"110.00",	"440.00",	"3"),
("2"	,"1",	"5",	"100.00",	"500.00",	"1"),
("3",	"1",	"3",	"100.00"	,"300.00"	,"1"),
("3",	"2",	"1"	,"40.00"	,"40.00"	,"15"),
("4",	"1"	,"3"	,"40.00",	"120.00",	"15"),
("5"	,"1",	"1",	"110.00",	"110.00",	"3"),
 ("5",	"2"	,"1"	,"140.00",	"140.00",	"4"	),
  ("5"	,"3"	,"1",	"100.00",	"100.00",	"1"),
   ("6",	"1"	,"1",	"5.00",	"5.00","12"),
    ("6",	"2",	"2"	,"60.00",	"120.00",	"7"),
    ("7",	"1"	,"1"	,"30.00",	"30.00",	"13"),
   ( "7",	"2"	,"1","110.00",	"110.00"	,"3"
    
	);          



   
   

   
   
     INSERT INTO  VENDOR (            
VendorID,CompanyName,ContactLastName,ContactFirstName,Address,City,State,Zip,Phone,Fax,Email)
VALUES 
("1",	"Wands Bulk Supply",		"Ollivander",	"Garrick"	,			"777 Wands Way"	,	"New York", 	"NY"	, 10025	,"800-555-1256",	"212-555-7777",	"Garrick.Olivander@wandsbulk.com"),
("2"	,"Wizarding School Supply",		"Skeeter", 	"Rita"		,			"1244 25th Avenue" ,	"New York" ,	"NY",	10020	,"800-555-7878",	"212-555-8888",  "Rita.Skeeter@hsupply.com"),
("3",	"Rare Magic Surplus",		"Abbot" ,		"Hannah"	,			"1200 Moggle Drive",	"Seattle",	"WA",	98101,	"800-555-9333",	"206-555-9999",	"Hannah.Abbot@raremagic.com"),	
("4",	"Exotic Items Emporium" ,	"Malfoy",		"Lucius" 	,			"883 Snakeskin Road" ,	"Los Angeles" ,	"CA" ,	90011	,"800-555-7844"	,"213-555-1122",	"Lucius.Malfoy@extocitems.com"),
("5",	"Potions Surplus" , "Fudge" ,	"Cornelius",	"1001 Brew Street"	,	"Detroit"	,"MI",	"48209",	"800-555-4589",	"313-555-2200",	"Cornelius.Fudge@potions.com"

);
                
                

INSERT INTO  ORDERS ( 
InvoiceNumber , DateOrdered	  ,DateReceived ,QuantityOrdered ,ItemCost	,OrderSubTotal 	 ,OrderTax	, OrderTotalCost	, ItemID , VendorID)
 VALUES 
("1", "2018-01-15",	"2018-02-01",	"20",	"75.00",	"1500.00",	"67.50"	,"1567.50"	,"1"	,"1"),
("2",	"2018-02-20",	"2018-03-02",	"20",	"95.00",	"1900.00"	,"85.50",	"1985.50",	"2",	"1"),
("3"	,"2018-05-20",	"2018-06-01",	"20",	"85.00",	"1700.00"	,"76.50",	"1776.50",	"3",	"1"),
("4"	,"2018-07-25",	"2018-08-20"	,"20",	"115.00",	"2300.00",	"103.50"	,2403.50,	"4",	"1"),
("5",	"2018-09-12",	"2018-10-10",	"20",	"105.00"	,"2100.00"	,"94.50",	"2194.50",	"5"	,"1"),
("6"	,"2018-11-15",	NULL,	"2"	,"710.00",	"1420.00"	,"143.42",	"1563.42",	"10"	,"3"),
("7"	,"2018-11-20"	,NULL,	"1",	"4000.00",	"4000.00",	"2900.00"	,"6900.00",	"11",	"4"

);
                            
                
            