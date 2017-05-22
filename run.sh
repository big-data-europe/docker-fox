#!/bin/bash

mvn clean compile javadoc:javadoc -Dmaven.test.skip=false
mvn exec:java -Dexec.mainClass="org.aksw.fox.ui.FoxRESTful"
