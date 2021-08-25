# mcserver-init

`docker run` is called without `--rm` so logs can be grabbed in the event of server crash.

## Without URL passed as env variable to container
`docker run --name mcserver .`

## Without URL passed as env variable to container
`docker run --name mcserver --env URL=ENTER_URL_HERE .`