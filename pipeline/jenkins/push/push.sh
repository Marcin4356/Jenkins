#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u marcin312241 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG marcin312241/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push marcin312241/$IMAGE:$BUILD_TAG
