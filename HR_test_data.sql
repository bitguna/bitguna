
INSERT INTO sales_employees (`name`,`salary`,`bank_account`,`insurance_number`,`commision_rate`) VALUES 
	('Adam Mickiewicz','1000.00','123 123 123','1111111111','0.1'),
	('Boleslaw Prus','2000.00','234 234 234','222222222','0.2'),
	('Arkady Fidler','3000.00','345 345 345','333333333','0.3'),
	('Maria Konopnicka','4000.00','456 456 456','444444444','0.4'),
	('Wislawa Szymborska','5000.00','567 567 567','555555555','0.5'),
	('Maria Konopnicka','6000.00','678 678 678','666666666','0.6'),
	('Henryk Sienkiewicz','7000.00','789 789 789','777777777','0.7');

SELECT * FROM sales_employees;

INSERT INTO delivery_employees (`name`,`salary`,`bank_account`,`insurance_number`) VALUES 
	('John Smith','10000.00','48 123 123 123','111-1111-111'),
	('John Doe','20000.00','48 234 234 234','222-222-222'),
	('Ann Smith','30000.00','48 345 345 345','333-333-333'),
	('John Travolta','40000.00','48 456 456 456','444-444-444'),
	('Donald T.','50000.00','48 567 567 567','555-555-555'),
	('John Rambo','60000.00','48 678 678 678','666-666-666');


SELECT * FROM delivery_employees