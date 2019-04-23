FROM openjdk
MAINTAINER Cuong Ngo <nqcuong@tma.com.vn>
ADD target/gateway-service.jar gateway-service.jar
ENTRYPOINT ["java", "-jar", "/gateway-service.jar"]
EXPOSE 8888