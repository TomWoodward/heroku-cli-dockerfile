set `HEROKU_API_KEY` for authentication. get it by running `heroku authorizations:create` or `heroku auth:token` when authenticated somewhere else.

to use this image to run a git deployment:
```
docker run \
  --env HEROKU_API_KEY \
  --env HEROKU_APP_NAME="my-cool-app" \
  -v "/path/to/repo:/code" \
  -w /code \
  $(docker build -q .) git-deploy
```
