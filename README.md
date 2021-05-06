**_Simple web CRUD application_**

Used – Java 8, Maven, JPA, Hibernate, Validator, MVC, Security (bcrypt), TomCat, DB - MySQL.

**How to use?**

Check MyConfig – DB url, DB username, DB password.
Install and configure Tomcat.
Run application (Shift+F10).

DB table fields:

    id (BIGINT, PRIMARY KEY, NOT NULL)
    name (VARCHAR(15))
    surname (VARCHAR(25))
    department (VARCHAR(20))
    salary (INT)
    phone_number (VARCHAR(20))

In browser:

http://localhost:8080/My_web_app/

Username – admin(user), password – admin(user) (see DB users.jpg).
