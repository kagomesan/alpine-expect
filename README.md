# alpine-expect

1. prepare work directroy at host side

mkdir work

2. Install

docker build ./ -t expect_image

docker run -v /docker/expect/work:/work --name expect -it -d --net=host expect_image /bin/sh

3. Container login

docker exec -it expect /bin/sh

4. First SSH login

ssh login to remote-host for create key into container.

5. Run expect-script on host side

docker exec expect /work/hoge.exp

6. remove container procedure

 *check container status 
 docker ps -a

 *container stop
 docker stop expect

 *remove container
 docker rm [cotainer-ID] or expect

 *check images
 docker images

 *remove image
 docker rmi [image-ID]
