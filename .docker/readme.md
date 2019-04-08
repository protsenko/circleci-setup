## Manual docker image build

### Build the application
```
mvn clean package
```

### Build docker image
```
docker build \
--rm -t circleci-setup:manual -f .docker/Dockerfile \
--build-arg PROJECT_NAME=circleci-setup .  
```
