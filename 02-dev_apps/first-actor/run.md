We have come to the end of our journey. We have a `wasmcloud` module, an updated manifest file, and a massive level of excitement! Here we go!

Since we have already done all the steps for building, signing, and pushing our application the manual way, lets use our handy `Makefile` this time.

`Makefile`{{open}}

`make`{{execute}}

And now lets start `wasmcloud` with our `manifest.yaml`!
`wasmcloud --allowed-insecure localhost:5000 -m manifest.yaml`

> Note: If you want to see more log output while `wasmcloud` is running, you can set the `RUST_LOG` environmental varible to the level you want to see! (The `Makefile` has an example under the `start` context.

AND FINALLY....

`curl localhost:8080/mult?5,5`
