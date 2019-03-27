## Manual docker image build

```
cd ${PROJECT_ROOT_DIR}

mvn clean package

docker build \
--rm -t circleci-setup:manual -f ./docker/Dockerfile \
--build-arg PROJECT_NAME=circleci-setup .  
```
