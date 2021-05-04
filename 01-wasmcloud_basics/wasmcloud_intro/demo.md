## Running the Echo Server

Now that we understand the construction of a manifest file, lets start our echo server.

`wasmcloud -m example/manifest.yaml`{{execute}}

After a few seconds, the runtime will be bootstrapped and we can test our echo server.

`curl localhost:8080`{{execute T2}}
