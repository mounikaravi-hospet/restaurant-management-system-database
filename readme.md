## Restaurant Management System

1. All the DDL commands (create tables) are in the file named "create table.sql.txt".
	1.1. After the create tables, we made some modifications to the table structure using alter table, the commands to run next are those.
	1.2. Alter tables commands are in the "alter table.sql.txt"

2. Some of the data was generated using few online tools. The names of these tools are in the "data.txt" file. However, the remaining data was filled manually refering to online sources.(No scripts were used in data generation)

3. We have 13 tables and the order in which the data has to be filled is given below (all the below queries are insert queries. The data is also present in the excel file named RMS Data.xlsx)
	
	1. supplier.sql
	2. manager.sql
	3. Branch.sql
	4. chef.sql
	5. waiter.sql
	6. Customer.sql
	7. manager_manages_chef.sql
	8. manager_manages_waiter.sql
	9. meal.sql
	10. makes.sql
	11. orders.sql
	12. attends_to.sql
	13. Bill.sql

4. There were some changes to be made to the data, so after the above scripts, update scripts should be executed.
	4.1. Scripts are available in the "update.sql" file.

5. Finally, the sample queries can be found in Queries.sql.txt

6. Project is explained in this video: https://www.youtube.com/watch?v=cS5fklI5vH0&ab_channel=TheFriendlyMartian
