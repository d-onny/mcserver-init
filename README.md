# mcserver-init

`docker run` is called without `--rm` so logs can be grabbed in the event of server crash.
`-it` is needed so that you can `docker attach` to the server terminal

## Without URL passed as env variable to container
`docker run -it --name mcserver .`

## With URL passed as env variable to container
`docker run -it --name mcserver --env URL=ENTER_URL_HERE .`