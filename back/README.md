# README

## How to Develop

NEED [docker](https://www.docker.com/)!!!

### First time only

```sh
docker-compose build
docker-compose run --rm rails bundle install
docker-compose run --rm rails bundle rake exec db:create
```

### Up development server

```sh
docker-compose up
```

Then, access http://localhost:3000 .

