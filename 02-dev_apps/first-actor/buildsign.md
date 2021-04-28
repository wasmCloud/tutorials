# Signing your actor

First off, lets build and sign the actor as-is.  This way, we can see if the module is behaving as we expect.


<details>
  <summary>Rust</summary>
  Build it!
  `cargo build --release`{{execute}}
  Sign it!
  `wash claims sign target/wasm32-unknown-unknown/release/calculator.wasm -c wasmcloud:httpserver --name "calculator" --ver 0.1.0 --rev 0`  
</details>
<details>
  <summary>Go</summary>

  Build it!
  `mkdir -p build && tinygo build -o build/calculator.wasm -target wasm -no-debug main.go`{{execute}}
  Sign it!
  `wash claims sign build/calculator.wasm -c wasmcloud:httpserver --name "calculator" --ver 0.1.0 --rev 0`{{execute}}
</details>
<details>
  <summary>Assembly Script</summary>
  
  Build it!
  ????
  Sign it!
  ????
</details>

> Notice: We have signed the `wasmcloud` module with the `-c wasmcloud:httpserver` flag.  This essentially gives our actor the permissions it will need to communicate with a `httpserver` provider when the time comes.

Once we run `wash claims sign`, on a wasm module, notice that a new file is dropped with the same name as our original file, with a `-s` appended to it.  This is a sign `wasmcloud` ACTOR!!!  At this point, we can use was to checkout the metadata of our branch new actor!

<details>
  <summary>Rust</summary>
  Inspect it!
  `wash claims inspect target/wasm32-unknown-unknown/release/calculator_s.wasm`{{execute}} 
</details>
<details>
  <summary>Go</summary>

  Inspect it!
  `wash claims inspect build/calculator_s.wasm`{{execute}}
</details>
<details>
  <summary>Assembly Script</summary>
  
  Inspect it!
  ????
</details>

AWESOME!
