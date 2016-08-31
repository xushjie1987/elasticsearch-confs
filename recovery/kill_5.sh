#!/bin/sh

jps -lm | grep org.apache.flume.node.Application | awk '{print $1}' | xargs kill -9

