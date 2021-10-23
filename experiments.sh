#!/bin/bash
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 > outputLoada.txt

echo "======================= Running workload A"
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 > outputRuna.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 2 > outputRuna2.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 4 > outputRuna4.txt

echo "======================= Running workload B"
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 2 > outputRunb2.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 4 > outputRunb4.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 > outputRunb.txt

echo "======================= Running workload C"
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 2 > outputRunc2.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 4 > outputRunc4.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 > outputRunc.txt

echo "======================= Running workload F"
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 2 > outputRunf2.txt
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 4 > outputRunf4.txt
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 > outputRunf.txt

echo "======================= Running workload D"
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 2 > outputRund2.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 -threads 4 > outputRund4.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=127.0.0.1" -p "redis.port=6379" -p operationcount=1000000 -p recordcount=1000000 > outputRund.txt

