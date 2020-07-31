#!/bin/sh
mvn clean package
docker exec namenode rm -rf  hadoop-1.0-SNAPSHOT.jar
docker cp ../hadoop/target/hadoop-1.0-SNAPSHOT.jar dd6449567d1c:hadoop-1.0-SNAPSHOT.jar 
