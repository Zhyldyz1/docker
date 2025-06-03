apt update
apt install -y ca-certificates curl gnupg
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg
echo \
apt update
apt install -y docker-ce docker-ce-cli containerd.io
systemctl start docker
systemctl enable docker
docker run hello-world
nano ~/.ssh/config
docker run hello-world
docker run alpine date
Unable to find image 'alpine:latest' locally
docker run ubuntu echo "Docker is working!"
docker images
cd apache
pwd
ls -a
docker pull httpd
ls
docker image ls
docker pull httpd:alpine
docker image ls
pwd
cd apache
docker build -t apapche:v1 .
docker image ls
docker build -t apache:v2
docker build -t apache:v2 .
docker image ls
ls
cd Dockerfile copy
mv "Dockerfile copy" Dockerfile.copy
docker build -f Dockerfile.copy -t my-apache .
ls
docker image ls
docker build -t apache:v3 .
docker image ls
pwd
docker build -f "Dockerfile copy" -t my-custom-apache .
cd Dockerfile.copy
ls -l
docker build -f Dockerfile.copy -t apache:v4 .
docker image ls
docker rm -rf *
docker rmi -f $(docker images -q)
docker image ls
cd ..
cd nodejs
npm run start
pwd
ls -a
git add .
