#show all Running containers
echo "${COLOR_CYAN}Show All Running Docker Cotainers"
echo "${Yellow}**********************************************************"
sudo docker ps -a
#stop the running container
echo "${Yellow}**********************************************************"
echo "${COLOR_CYAN}Please Insert Container Id to Remove : "
read containerId
sudo docker container stop $containerId
echo "${RED}Stopped Container:$containerId"
#remove container
sudo docker rm $containerId
echo "${RED}Removed Container:$containerId"
echo "${Yellow}**********************************************************"
#sho all docker images
echo "${COLOR_CYAN}Show Docker Images"
sudo docker images
echo "${COLOR_CYAN}Please Insert DockerImage name to Remove : "
read DockerImagename
#remove Docker image
sudo docker rmi Image $DockerImagename
echo "${RED}Removed DockerImage:$DockerImagename"
echo "${Yellow}**********************************************************"
#build jar file project
echo "${COLOR_CYAN}Build Project Using Maven"
mvn clean package
#create docker image
echo "${COLOR_CYAN}Creating Docker Image"
sudo docker build -t audici_auth .
#Start docker image
sudo docker run -d -p 8080:8080 audici_auth
echo "${COLOR_CYAN}Started!!!!!"
