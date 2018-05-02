#!/bin/bash

TOPICS_KAFKA_SH=/opt/kafka/bin/kafka-topics.sh

$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 64 --topic metrics
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 12 --topic events
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 12 --topic raw-events
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 12 --topic transformed-events
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 12 --topic stream-definitions
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 12 --topic transform-definitions
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 12 --topic alarm-state-transitions
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 12 --topic alarm-notifications
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 12 --topic stream-notifications
$TOPICS_KAFKA_SH --create --zookeeper localhost:2181 --replication-factor 1 --partitions 3  --topic retry-notifications

