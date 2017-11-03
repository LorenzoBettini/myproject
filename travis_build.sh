#!/bin/bash

set -ev
if [ "$WITH_COVERALLS" == "true" ];
then
  mvn -f com.examples.myproject/pom.xml clean verify -Pjacoco coveralls:report;
elif [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
  mvn -f com.examples.myproject/pom.xml clean verify;
fi
