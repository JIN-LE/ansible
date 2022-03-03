#! /usr/bin/env bash

# ssh key generating

sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@172.16.1.11
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@172.16.1.12
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@172.16.1.13
