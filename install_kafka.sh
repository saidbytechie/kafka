#!/bin/bash

wget https://archive.apache.org/dist/kafka/3.0.0/kafka_2.12-3.0.0.tgz

tar -xzvf kafka_2.12-3.0.0.tgz

sudo chmod +x kafka_2.12-3.0.0

cd kafka_2.12-3.0.0

nohup ./bin/zookeeper-server-start.sh ./config/zookeeper.properties > /home/kafka/zookeeper_log.txt 2>&1 &

# sleep sometime as zookeeper needs to start
sleep 5

nohup ./bin/kafka-server-start.sh ./config/server.properties > /home/kafka/kafka_log.txt 2>&1 &

# If you face errors while starting server, go to kafka-server-start.sh and modify the heap size to Xmx400M Xms400M
# Kafka tries to allocate 1 GB of heap space during startup. It may run on your machine based on the underlying memory.


# To create topic
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic saidbytechie --partitions 3 --replication-factor 1

# To verify if the topic is created
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --list
