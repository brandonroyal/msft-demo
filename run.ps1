docker network create default

docker run --name redis --network default -d brandonroyal/demo_redis:latest
docker run --name web --network default -d brandonroyal/demo_web:latest
docker run --name api --network --link redis -d brandonroyal/demo_api:latest
docker run --name nginx --network --link web --link api -p 80:80 -d brandonroyal/demo_nginx:latest