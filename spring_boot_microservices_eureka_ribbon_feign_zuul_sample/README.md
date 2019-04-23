## Part 1: Technology stack

	- Spring boot: API base on Java
	- Hibernate + JPA: ORM
	- Lombok: Getter, Setter
	- Eureka: Discovery Server
	- Feign + Ribbon: Load balancer
	- Zuul: API Gateway
	- MySQL: Database

## Part 2: Project structure (modules)

	- Eureka-server: 	port(8761)
	- Service-1:		port(8000)
	- User-service-1:	port(8001)
	- User-service-2:	port(8002)
	- Gateway-service:	port(8888)
	
## Part 3: How to start?

	1.Create database first then go to application.properties to define jbdc connection
	2.Build project with maven (parent project)
	3.Start eureka-server project first
	4.Start other projects
	5.Open browser with url: "localhost:8761" to access Eureka Web Portal
	6.Try some APIs and see results