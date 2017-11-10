#!/bin/bash

set -ev
if [ "$WITH_COVERALLS" == "true" ];
then
  mvn -f com.examples.myproject/pom.xml clean jacoco:prepare-agent verify jacoco:report coveralls:report;
elif [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
  mvn -f com.examples.myproject/pom.xml clean verify;
fi
