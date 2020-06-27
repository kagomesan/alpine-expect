# alpine-expect

# prepare work directroy at host side
mkdir work

# Install
docker build ./ -t expect_image

docker run -v /docker/expect/work:/work --name expect -it -d --net=host expect_image /bin/sh

# Container login
docker exec -it expect /bin/sh

# Run expect-script on host side
docker exec expect /work/hoge.exp

# First SSH login
ssh login to remote-host for create key into container.

# remove container procedure

1.check container status 
docker ps -a

2.container stop
docker stop expect

3.remove container
docker rm [cotainer-ID] or expect

4.check images
docker images

5.remove image

docker rmi [image-ID]

