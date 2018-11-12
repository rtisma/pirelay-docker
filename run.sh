docker build -t pirelay:latest . 
docker run --privileged -d  -p 80:80 pirelay:latest
