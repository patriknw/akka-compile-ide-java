#!/bin/bash

#rm -rf .classpath .project .settings .idea akka-sample-typed-java.iml

rm -rf src/main/java/*
rm -rf src/test/java/*

mkdir -p src/test/java/jdocs
cp -R ../akka/akka-actor-typed-tests/src/test/java/jdocs/* src/test/java/jdocs/
cp -R ../akka/akka-persistence-typed/src/test/java/jdocs/* src/test/java/jdocs/
cp -R ../akka/akka-cluster-typed/src/test/java/jdocs/* src/test/java/jdocs/
cp -R ../akka/akka-cluster-sharding-typed/src/test/java/jdocs/* src/test/java/jdocs/

mkdir -p src/test/java/com/lightbend/akka/sample/
cp -R /Users/patrik/dev/akka/akka-docs/src/test/java/jdocs/tutorial_1/* src/test/java/com/lightbend/akka/sample/
cp -R /Users/patrik/dev/akka/akka-docs/src/test/java/jdocs/tutorial_2/* src/test/java/com/lightbend/akka/sample/
cp -R /Users/patrik/dev/akka/akka-docs/src/test/java/jdocs/tutorial_3 src/test/java/jdocs/
cp -R /Users/patrik/dev/akka/akka-docs/src/test/java/jdocs/tutorial_4 src/test/java/jdocs/
cp -R /Users/patrik/dev/akka/akka-docs/src/test/java/jdocs/tutorial_5 src/test/java/jdocs/
cp -R /Users/patrik/dev/akka/akka-docs/src/test/java/jdocs/AbstractJavaTest.java src/test/java/jdocs/
cp -R /Users/patrik/dev/akka/akka-docs/src/test/java/jdocs/stream src/test/java/jdocs/

cp -R ../akka-quickstart-java.g8/src/main/g8/src/main/java/* src/main/java/
cp -R ../akka-quickstart-java.g8/src/main/g8/src/test/java/* src/test/java/

cp -R ../akka-samples/akka-sample-cluster-java/src/main/java/* src/main/java/
cp -R ../akka-samples/akka-sample-distributed-data-java/src/main/java/* src/main/java/
cp -R ../akka-samples/akka-sample-sharding-java/src/main/java/* src/main/java/

mvn test-compile