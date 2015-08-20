```
#Build

$ git clone git@github.com:imanzano/haproxy-docker.git
$ cd haproxy-docker
$ docker build -t <NAME>

#Run

docker run -d -p 8080:8080  -p 9000:1936 <NAME>
```
