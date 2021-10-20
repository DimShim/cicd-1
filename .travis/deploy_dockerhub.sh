#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi

docker build -f Dockerfile -t dimshimdim/cicd-1:$TAG .
docker push dimshimdim/cicd-1:$TAG

echo "Docker complete!"
