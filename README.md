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

or as a manual runtime for heroku commands
```
docker run $(docker build -q .) bash
> heroku login -i # you can do this manually or provide HEROKU_API_KEY for automated scripts
> heroku config:set -a my-cool-app FOOBAR=asdf
```
