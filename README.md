**_Simple web CRUD application_**

Used – Java 8, Maven, JPA, Hibernate, Validator, MVC, Security (bcrypt),
TomCat, DB - MySQL.

**How to use?**

Create new DB (MySQL) and table (see DB table fields).
Create table users (Username – admin(user), password
– admin(user) (see Table users.jpg)).
Use https://www.browserling.com/tools/bcrypt to get bcrypted password.
Fix MyConfig – DB url, DB username, DB password.
Run application (Shift+F10).

Username **User**: you can view all employees list.

Username **Admin**: you can view all employees list, add new employees,
update existing employees and delete employees.

DB table fields:

    id (BIGINT, PRIMARY KEY, NOT NULL)
    name (VARCHAR(15))
    surname (VARCHAR(25))
    department (VARCHAR(20))
    salary (INT)
    phone_number (VARCHAR(20))

In browser:

http://localhost:8080/My_web_app/

Username – admin(user), password – admin(user) (see Table users.jpg).
