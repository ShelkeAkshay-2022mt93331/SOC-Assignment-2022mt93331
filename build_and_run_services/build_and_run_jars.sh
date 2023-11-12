#!/bin/bash

echo "Hello"

cd ./config-server

mvn clean install -D maven.test.skip

java -jar ./target/config-server-0.0.1-SNAPSHOT.jar &

cd ..

cd ./service-registry

mvn clean install -D maven.test.skip

java -jar ./target/service-registry-0.0.1-SNAPSHOT.jar &

cd ..

cd ./api-gateway

mvn clean install -D maven.test.skip

java -jar ./target/api-gateway-0.0.1-SNAPSHOT.jar &

cd ..

cd ./department-service

mvn clean install -D maven.test.skip

java -jar ./target/department-service-0.0.1-SNAPSHOT.jar &


cd ..

cd ./employee-service

mvn clean install -D maven.test.skip

java -jar ./target/employee-service-0.0.1-SNAPSHOT.jar &