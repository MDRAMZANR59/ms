MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| abc                |
| action             |
| company            |
| compnay            |
| information_schema |
| julfiqur           |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
10 rows in set (0.039 sec)

MariaDB [(none)]> create database ms;
Query OK, 1 row affected (0.006 sec)

MariaDB [(none)]> use ms;
Database changed
MariaDB [ms]> create table auth (
    -> create table auth (id int auto_increment primary key, name varchar(255), email varchar(255), contact varchar(255), photo varchar(255), username varchar(255) not null, password varchar(255), status int(1), created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'create table auth (id int auto_increment primary key, name varchar(255), emai...' at line 2
MariaDB [ms]> create table auth (id int auto_increment primary key, name varchar(255), email varchar(255), contact varchar(255), photo varchar(255), username varchar(255) not null, password varchar(255), status int(1), created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.138 sec)

MariaDB [ms]> select * from auth;
Empty set (0.107 sec)

MariaDB [ms]> describe auth;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| name       | varchar(255) | YES  |     | NULL    |                |
| email      | varchar(255) | YES  |     | NULL    |                |
| contact    | varchar(255) | YES  |     | NULL    |                |
| photo      | varchar(255) | YES  |     | NULL    |                |
| username   | varchar(255) | NO   |     | NULL    |                |
| password   | varchar(255) | YES  |     | NULL    |                |
| status     | int(1)       | YES  |     | NULL    |                |
| created_at | datetime     | YES  |     | NULL    |                |
| created_by | int(11)      | YES  |     | NULL    |                |
| udated_at  | datetime     | YES  |     | NULL    |                |
| updated_by | int(11)      | YES  |     | NULL    |                |
| deleted_at | datetime     | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
13 rows in set (0.009 sec)

MariaDB [ms]> create table auth (id int auto_increment primary key, name varchar(255), contact varchar(255), status int(1), due decimal(10,2), created_at datetime, created_by int, udated_at datetime, updated_by int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [ms]> create table customer (id int auto_increment primary key, name varchar(255), contact varchar(255), status int(1), due decimal(10,2), created_at datetime, created_by int, udated_at datetime, updated_by int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [ms]> show tables;
+--------------+
| Tables_in_ms |
+--------------+
| auth         |
+--------------+
1 row in set (0.000 sec)

MariaDB [ms]> create table customer (id int auto_increment primary key, name varchar(255), contact varchar(255), status int(1), due decimal(10,2), created_at datetime, created_by int, udated_at datetime, updated_by int);
Query OK, 0 rows affected (0.225 sec)

MariaDB [ms]> show tables;
+--------------+
| Tables_in_ms |
+--------------+
| auth         |
| customer     |
+--------------+
2 rows in set (0.000 sec)

MariaDB [ms]> describe customer;
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| id         | int(11)       | NO   | PRI | NULL    | auto_increment |
| name       | varchar(255)  | YES  |     | NULL    |                |
| contact    | varchar(255)  | YES  |     | NULL    |                |
| status     | int(1)        | YES  |     | NULL    |                |
| due        | decimal(10,2) | YES  |     | NULL    |                |
| created_at | datetime      | YES  |     | NULL    |                |
| created_by | int(11)       | YES  |     | NULL    |                |
| udated_at  | datetime      | YES  |     | NULL    |                |
| updated_by | int(11)       | YES  |     | NULL    |                |
+------------+---------------+------+-----+---------+----------------+
9 rows in set (0.022 sec)

MariaDB [ms]> create table supplier (id int auto_increment primary key, name varchar(255), contact varchar(255), due decimal(10,2), status int(1),  created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.151 sec)

MariaDB [ms]> create table medicine (id int auto_increment primary key, brand name varchar(255), generic name varchar(255), dose varchar(255), type_id int, status int(1),  created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(255), generic name varchar(255), dose varchar(255), type_id int, stat...' at line 1
MariaDB [ms]> create table medicine (id int auto_increment primary key, brand name varchar(255), generic name varchar(255), dose varchar(255), type_id int(1), status int(1),  created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(255), generic name varchar(255), dose varchar(255), type_id int(1), s...' at line 1
MariaDB [ms]> create table medicine (id int auto_increment primary key, brand_name varchar(255), generic_name varchar(255), dose varchar(255), type_id int(1), status int(1),  created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.116 sec)

MariaDB [ms]> create table type (id int auto_increment primary key, type varchar(255),  created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.154 sec)

MariaDB [ms]> create table sales (id int auto_increment primary key, customer_id int, sales_date date, qty int, sub_amount decimal(10,2), discount decimal(10,2), vat decimal(10,2), total_amount decimal(10,2), created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.148 sec)

MariaDB [ms]> create table sales_details (id int auto_increment primary key, sales_id int, sales_date date, medicine_id int, qty decimal(10,2), price decimal(10,2), created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.200 sec)

MariaDB [ms]> create table purchase (id int auto_increment primary key, supplier_id int, purchase_date date, qty int, sub_amount decimal(10,2), discount decimal(10,2), vat decimal(10,2), total_amount decimal(10,2), created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.222 sec)

MariaDB [ms]> create table purchase_details (id int auto_increment primary key, purchase_id int, purchase_date date, medicine_id int, qty decimal(10,2), price decimal(10,2), created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.134 sec)

MariaDB [ms]> create table stock (id int auto_increment primary key, purchase_id int, sales_id int, medicine_id int, qty decimal(10,2), price decimal(10,2), stock_date date, created_at datetime, created_by int, udated_at datetime, updated_by int, deleted_at datetime);
Query OK, 0 rows affected (0.157 sec)

MariaDB [ms]> show tables;
+------------------+
| Tables_in_ms     |
+------------------+
| auth             |
| customer         |
| medicine         |
| purchase         |
| purchase_details |
| sales            |
| sales_details    |
| stock            |
| supplier         |
| type             |
+------------------+
10 rows in set (0.001 sec)

MariaDB [ms]> select * from auth, customer;
Empty set (0.000 sec)

MariaDB [ms]> describe auth, customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ' customer' at line 1
MariaDB [ms]> describe auth;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| name       | varchar(255) | YES  |     | NULL    |                |
| email      | varchar(255) | YES  |     | NULL    |                |
| contact    | varchar(255) | YES  |     | NULL    |                |
| photo      | varchar(255) | YES  |     | NULL    |                |
| username   | varchar(255) | NO   |     | NULL    |                |
| password   | varchar(255) | YES  |     | NULL    |                |
| status     | int(1)       | YES  |     | NULL    |                |
| created_at | datetime     | YES  |     | NULL    |                |
| created_by | int(11)      | YES  |     | NULL    |                |
| udated_at  | datetime     | YES  |     | NULL    |                |
| updated_by | int(11)      | YES  |     | NULL    |                |
| deleted_at | datetime     | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
13 rows in set (0.017 sec)

MariaDB [ms]> describe auth;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| name       | varchar(255) | YES  |     | NULL    |                |
| email      | varchar(255) | YES  |     | NULL    |                |
| contact    | varchar(255) | YES  |     | NULL    |                |
| photo      | varchar(255) | YES  |     | NULL    |                |
| username   | varchar(255) | NO   |     | NULL    |                |
| password   | varchar(255) | YES  |     | NULL    |                |
| status     | int(1)       | YES  |     | NULL    |                |
| created_at | datetime     | YES  |     | NULL    |                |
| created_by | int(11)      | YES  |     | NULL    |                |
| udated_at  | datetime     | YES  |     | NULL    |                |
| updated_by | int(11)      | YES  |     | NULL    |                |
| deleted_at | datetime     | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
13 rows in set (0.010 sec)

MariaDB [ms]> describe customer;
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| id         | int(11)       | NO   | PRI | NULL    | auto_increment |
| name       | varchar(255)  | YES  |     | NULL    |                |
| contact    | varchar(255)  | YES  |     | NULL    |                |
| status     | int(1)        | YES  |     | NULL    |                |
| due        | decimal(10,2) | YES  |     | NULL    |                |
| created_at | datetime      | YES  |     | NULL    |                |
| created_by | int(11)       | YES  |     | NULL    |                |
| udated_at  | datetime      | YES  |     | NULL    |                |
| updated_by | int(11)       | YES  |     | NULL    |                |
+------------+---------------+------+-----+---------+----------------+
9 rows in set (0.011 sec)

MariaDB [ms]> describe medicine;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int(11)      | NO   | PRI | NULL    | auto_increment |
| brand_name   | varchar(255) | YES  |     | NULL    |                |
| generic_name | varchar(255) | YES  |     | NULL    |                |
| dose         | varchar(255) | YES  |     | NULL    |                |
| type_id      | int(1)       | YES  |     | NULL    |                |
| status       | int(1)       | YES  |     | NULL    |                |
| created_at   | datetime     | YES  |     | NULL    |                |
| created_by   | int(11)      | YES  |     | NULL    |                |
| udated_at    | datetime     | YES  |     | NULL    |                |
| updated_by   | int(11)      | YES  |     | NULL    |                |
| deleted_at   | datetime     | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
11 rows in set (0.009 sec)

MariaDB [ms]> describe purchase;
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| id            | int(11)       | NO   | PRI | NULL    | auto_increment |
| supplier_id   | int(11)       | YES  |     | NULL    |                |
| purchase_date | date          | YES  |     | NULL    |                |
| qty           | int(11)       | YES  |     | NULL    |                |
| sub_amount    | decimal(10,2) | YES  |     | NULL    |                |
| discount      | decimal(10,2) | YES  |     | NULL    |                |
| vat           | decimal(10,2) | YES  |     | NULL    |                |
| total_amount  | decimal(10,2) | YES  |     | NULL    |                |
| created_at    | datetime      | YES  |     | NULL    |                |
| created_by    | int(11)       | YES  |     | NULL    |                |
| udated_at     | datetime      | YES  |     | NULL    |                |
| updated_by    | int(11)       | YES  |     | NULL    |                |
| deleted_at    | datetime      | YES  |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+
13 rows in set (0.009 sec)

MariaDB [ms]> describe purchase_details;
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| id            | int(11)       | NO   | PRI | NULL    | auto_increment |
| purchase_id   | int(11)       | YES  |     | NULL    |                |
| purchase_date | date          | YES  |     | NULL    |                |
| medicine_id   | int(11)       | YES  |     | NULL    |                |
| qty           | decimal(10,2) | YES  |     | NULL    |                |
| price         | decimal(10,2) | YES  |     | NULL    |                |
| created_at    | datetime      | YES  |     | NULL    |                |
| created_by    | int(11)       | YES  |     | NULL    |                |
| udated_at     | datetime      | YES  |     | NULL    |                |
| updated_by    | int(11)       | YES  |     | NULL    |                |
| deleted_at    | datetime      | YES  |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+
11 rows in set (0.010 sec)

MariaDB [ms]> describe sales;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| id           | int(11)       | NO   | PRI | NULL    | auto_increment |
| customer_id  | int(11)       | YES  |     | NULL    |                |
| sales_date   | date          | YES  |     | NULL    |                |
| qty          | int(11)       | YES  |     | NULL    |                |
| sub_amount   | decimal(10,2) | YES  |     | NULL    |                |
| discount     | decimal(10,2) | YES  |     | NULL    |                |
| vat          | decimal(10,2) | YES  |     | NULL    |                |
| total_amount | decimal(10,2) | YES  |     | NULL    |                |
| created_at   | datetime      | YES  |     | NULL    |                |
| created_by   | int(11)       | YES  |     | NULL    |                |
| udated_at    | datetime      | YES  |     | NULL    |                |
| updated_by   | int(11)       | YES  |     | NULL    |                |
| deleted_at   | datetime      | YES  |     | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
13 rows in set (0.011 sec)

MariaDB [ms]> describe sales_details;
+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| id          | int(11)       | NO   | PRI | NULL    | auto_increment |
| sales_id    | int(11)       | YES  |     | NULL    |                |
| sales_date  | date          | YES  |     | NULL    |                |
| medicine_id | int(11)       | YES  |     | NULL    |                |
| qty         | decimal(10,2) | YES  |     | NULL    |                |
| price       | decimal(10,2) | YES  |     | NULL    |                |
| created_at  | datetime      | YES  |     | NULL    |                |
| created_by  | int(11)       | YES  |     | NULL    |                |
| udated_at   | datetime      | YES  |     | NULL    |                |
| updated_by  | int(11)       | YES  |     | NULL    |                |
| deleted_at  | datetime      | YES  |     | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+
11 rows in set (0.009 sec)

MariaDB [ms]> describe stock;
+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| id          | int(11)       | NO   | PRI | NULL    | auto_increment |
| purchase_id | int(11)       | YES  |     | NULL    |                |
| sales_id    | int(11)       | YES  |     | NULL    |                |
| medicine_id | int(11)       | YES  |     | NULL    |                |
| qty         | decimal(10,2) | YES  |     | NULL    |                |
| price       | decimal(10,2) | YES  |     | NULL    |                |
| stock_date  | date          | YES  |     | NULL    |                |
| created_at  | datetime      | YES  |     | NULL    |                |
| created_by  | int(11)       | YES  |     | NULL    |                |
| udated_at   | datetime      | YES  |     | NULL    |                |
| updated_by  | int(11)       | YES  |     | NULL    |                |
| deleted_at  | datetime      | YES  |     | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+
12 rows in set (0.010 sec)

MariaDB [ms]> describe supplier;
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| id         | int(11)       | NO   | PRI | NULL    | auto_increment |
| name       | varchar(255)  | YES  |     | NULL    |                |
| contact    | varchar(255)  | YES  |     | NULL    |                |
| due        | decimal(10,2) | YES  |     | NULL    |                |
| status     | int(1)        | YES  |     | NULL    |                |
| created_at | datetime      | YES  |     | NULL    |                |
| created_by | int(11)       | YES  |     | NULL    |                |
| udated_at  | datetime      | YES  |     | NULL    |                |
| updated_by | int(11)       | YES  |     | NULL    |                |
| deleted_at | datetime      | YES  |     | NULL    |                |
+------------+---------------+------+-----+---------+----------------+
10 rows in set (0.021 sec)

MariaDB [ms]> describe type;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| type       | varchar(255) | YES  |     | NULL    |                |
| created_at | datetime     | YES  |     | NULL    |                |
| created_by | int(11)      | YES  |     | NULL    |                |
| udated_at  | datetime     | YES  |     | NULL    |                |
| updated_by | int(11)      | YES  |     | NULL    |                |
| deleted_at | datetime     | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
7 rows in set (0.009 sec)

MariaDB [ms]> 