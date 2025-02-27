Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.23 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> Create Database BAnk;
Query OK, 1 row affected (0.02 sec)

mysql> use BAnk;
Database changed

/*Database Schema: Consider a simple database with one tables: BankAccount BankAccount Table: 

*● Columns: account_id (Primary Key), account_holder_name, account_balance

*/

mysql> Create table BankAccount(Acc_id int(10) primary key, Acc_Hol_Name varchar(20), Acc_Bal Decimal(10));
Query OK, 0 rows affected, 1 warning (0.35 sec)

// Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 


mysql> insert into BankAccount(Acc_id, Acc_Hol_Name, Acc_Bal) values(101, "Meena Durgam", 20000.0), (102, "Nandini Bura", 40000.0), (103, "Akhila Vaggu", 30000.0), (104, "Lavanya Boddhul", 50000.0), (105, "Pooja Nama", 70000.0);
Query OK, 5 rows affected (0.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

//Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.

mysql> select * from BankAccount;
+--------+-----------------+---------+
| Acc_id | Acc_Hol_Name    | Acc_Bal |
+--------+-----------------+---------+
|    101 | Meena Durgam    |   20000 |
|    102 | Nandini Bura    |   40000 |
|    103 | Akhila Vaggu    |   30000 |
|    104 | Lavanya Boddhul |   50000 |
|    105 | Pooja Nama      |   70000 |
+--------+-----------------+---------+
5 rows in set (0.00 sec)

//Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

mysql> select Acc_Hol_Name,Acc_Bal from BankAccount where Acc_Bal > 30000;
+-----------------+---------+
| Acc_Hol_Name    | Acc_Bal |
+-----------------+---------+
| Nandini Bura    |   40000 |
| Lavanya Boddhul |   50000 |
| Pooja Nama      |   70000 |
+-----------------+---------+
3 rows in set (0.00 sec)

//Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

mysql> update BankAccount SET Acc_Bal = 25000 where Acc_id = 101;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> Select * from BankAccount;
+--------+-----------------+---------+
| Acc_id | Acc_Hol_Name    | Acc_Bal |
+--------+-----------------+---------+
|    101 | Meena Durgam    |   25000 |
|    102 | Nandini Bura    |   40000 |
|    103 | Akhila Vaggu    |   30000 |
|    104 | Lavanya Boddhul |   50000 |
|    105 | Pooja Nama      |   70000 |
+--------+-----------------+---------+
5 rows in set (0.00 sec)

mysql> 
mysql>