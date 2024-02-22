#!/bin/bash

# create a topic
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic saidbytechie --partitions 3 --replication-factor 1

# list topics
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --list

# describe the topic
./bin/kafka-topics.sh --describe --bootstrap-server localhost:9092 --topic saidbytechie

# alter configurations of a topic
./bin/kafka-configs.sh --bootstrap-server localhost:9092 --alter --entity-type topics --entity-name saidbytechie --add-config retention.ms=86400000

# delete the configuration of a topic
./bin/kafka-configs.sh --bootstrap-server localhost:9092 --alter --entity-type topics --entity-name saidbytechie --delete-config retention.ms

# increase partition count
# Note: once partitions are increase they can't be decreased. You have to delete and recreate the topic
./bin/kafka-topics.sh --alter --bootstrap-server your_bootstrap_server --topic saidbytechie --partitions 4 

# delete a topic
./bin/kafka-topics.sh --delete --bootstrap-server localhost:9092 --topic saidbytechie

# other commands
./bin/kafka-topics.sh --help

