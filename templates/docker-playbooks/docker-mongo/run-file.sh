DOCKER_TAG=mongo:latest
DOCKER_NAME=mongo-misc
DOCKER_HOST=
TMP_DIR=
BASE_DIR=

SERVICE=27017:27017

# cleaup Docker
docker kill $DOCKER_NAME
docker rm $DOCKER_NAME

# setup dirs
DOCKER_BASE=/data
DOCKER_NB=$DOCKER_BASE/$DOCKER_NAME
DOCKER_LOGS=$DOCKER_NB/logs
DOCKER_DATA=$DOCKER_NB/data

DOCKER_PORTS="-p $SERVICE "
DOCKER_ENV=""
DOCKER_VOL="-v $DOCKER_DATA/db:/data/db -v $DOCKER_DATA/configdb:/data/configdb "

sudo mkdir -p $DOCKER_DATA
sudo mkdir -p $DOCKER_LOGS
sudo chmod -R a+rw $DOCKER_NB

docker build -t $DOCKER_TAG .
# run command not 
echo "docker run -d $DOCKER_ADD_HOST $DOCKER_PORTS $DOCKER_VOL -it  $DOCKER_ENV --name $DOCKER_NAME $DOCKER_TAG"
docker run -d $DOCKER_ADD_HOST $DOCKER_PORTS $DOCKER_VOL -it  $DOCKER_ENV \
           --name $DOCKER_NAME $DOCKER_TAG

