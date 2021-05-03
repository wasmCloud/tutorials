We have come to the end of our journey. We have a `wasmcloud` module, an updated manifest file, and a massive level of excitement! Here we go!

Lets build it, sign it, and push it again.

<details>
  <summary>Rust</summary>
  
  `cargo build --release`{{execute interrupt T1}}   
  
  `wash claims sign target/wasm32-unknown-unknown/release/calculator.wasm -c wasmcloud:httpserver --name "calculator" --ver 0.1.0 --rev 0`{{execute T1}}

`wash drain all && wash reg push localhost:5000/calc:0.1.0 target/wasm32-unknown-unknown/release/calculator_s.wasm --insecure`{{execute T1}}

</details>
<details>
  <summary>Go</summary>

`mkdir -p build && tinygo build -o build/calculator.wasm -target wasm -no-debug main.go`{{execute interrupt T1}}

`wash claims sign build/calculator.wasm -c wasmcloud:httpserver --name "calculator" --ver 0.1.0 --rev 0`{{execute T1}}

`wash drain all && wash reg push localhost:5000/calc:0.1.0 build/calculator_s.wasm --insecure`{{execute T1}}

</details>
<details>
  <summary>AssemblyScript</summary>

`npm run build`{{execute interrupt T1}}

`wash claims sign calculator.wasm -q --name "calculator" --ver 0.1.0 --rev 0`{{execute T1}}

`wash drain all && wash reg push localhost:5000/calc:0.1.0 calculator_s.wasm --insecure`{{execute T1}}

</details>

> Note: We prefaced the registry push with a `wash drain all` which cleared the OCI cache. We did this since we are reusing the same tag.

And now lets start `wasmcloud` with our `manifest.yaml`!
`wasmcloud --allowed-insecure localhost:5000 -m manifest.yaml`{{execute interrupt T1}}

> Note: If you want to see more log output while `wasmcloud` is running, you can set the `RUST_LOG` environmental varible to the level you want to see! (The `Makefile` has an example under the `start` context.

AND FINALLY....

`curl localhost:8080/mult?5,5 --output -`{{execute T2}}
