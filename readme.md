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
8. Go-to postman environment variable setup and please replace with your IPV4 address as IP ( press Windows + R button, type cmd and enter, then type ipconfig)
9. token will be generated by login api and set into bearer_token automatically

step to run in docker

1) mvn clean install
2) once mvn successfully installed, open cmd from the root folder where compose.yml is there
3) type "docker compose up"
4) docker will successfully run
