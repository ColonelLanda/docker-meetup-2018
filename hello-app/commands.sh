
# build the image
docker build -t hello-app:0.1 .

# run the container
docker run -p 5000:5000 hello-app:0.1

#run redis 
docker run -p 6379:6379 redis 

# run with redis 
docker run -p 5000:5000 -e REDIS_HOST=host.docker.internal hello-app:0.1
