# README

## How to Develop

NEED [docker](https://www.docker.com/)!!!

### First time only

```sh
touch secrets.env
docker-compose build
docker-compose run --rm rails bundle install
docker-compose run --rm rails bundle exec rake db:create
```

### Up development server

```sh
docker-compose up
```

Then, access http://localhost:3000 .

