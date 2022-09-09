#!/bin/bash

cd $(dirname $0)



export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home

# GOMOBILE="go run github.com/tougee/jvm/cmd/gomobile"
GOMOBILE=gomobile

# $GOMOBILE bind -target=darwin/amd64 -x -v -o build -tags=openssl \
#   github.com/tougee/jvm/demos/basic/hello || exit 1

CLASSPATH=build:build/hello.jar

javac -cp $CLASSPATH Main.java -d build
java -cp $CLASSPATH -Djava.library.path=build/libs/amd64 Main
