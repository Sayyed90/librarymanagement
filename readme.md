Pre-requirement:

1. Docker
2. IDE
3. git
4. JDK - version 17
5. maven - version 3.9.6
6. springboot - version  3.3.2
7. Spring data JPA - version  3.3.2
8. jwt - version  0.11.5
9. Junit - version 3.3.2
10. Docker - version 4.32.0
11. Swagger - version 2.6.0

Setup:

1. Install Docker in windows or mac or linux machine
2. install IDE and configure maven and jdk
3. run configuration as "maven clean install"
4. once installation done. open terminal or cmd from the project root
5. run "docker compose up". This will fetchup both images, networks and run for sql and springboot library apps
6. verify the MYSQL locally to see if the tables are created
7. execute postman collections rest call and verify in the db if the changes are reflected

API Access:

1. user (Admin) register to the system using API "/home/register". Require emails, name, age, and password as mandatory fields
2. user login to the system using API "/home/login". Using email and password
3. user register book using API "/book/register". Require ISBN Numbers, Author, and Title as mandatory field
4. user get book detail by passing book_id using API "/book/{id}"
5. user get list of book registered using API "/book/all"
6. user add data of borrower into system using API "/borrow/add". Book_id, and user_id is passed as mandatory fields
7. user update borrower and book returned details using API "/borrow/return/{book_id}". Book_id is used as unique attribute to retrieve the book and update
8. user delete the borrower details by book_id using API "/borrow/delete/{id}"