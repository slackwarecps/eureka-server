# eureka-server
eureka-server

# how to build
    docker build -t fabioalvaro/eureka-server .

# how to run -- example
  docker run -it --name lixo -p 8055:8055 --env PORT=8055 --env CLIENT_SERVICE_URL=http://localhost:8055/eureka  fabioalvaro/eureka-server:latest sh
