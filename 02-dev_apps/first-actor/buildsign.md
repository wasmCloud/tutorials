# Signing your actor

First off, lets build and sign the actor as-is. This way, we can see if the module is behaving as we expect.

<details>
  <summary>Rust</summary>
  Build it    
  
  `cargo build --release`{{execute}}   
  
  Sign it    
  `wash claims sign target/wasm32-unknown-unknown/release/calculator.wasm --http_server --name "calculator" --ver 0.1.0 --rev 0 --destination calculator_s.wasm`{{execute}}
</details>
<details>
  <summary>Go</summary>

Build it  
 `mkdir -p build && tinygo build -o build/calculator.wasm -target wasm -no-debug main.go`{{execute}}

Sign it  
 `wash claims sign build/calculator.wasm --http_server --name "calculator" --ver 0.1.0 --rev 0 --destination calculator_s.wasm`{{execute}}

</details>
<details>
  <summary>AssemblyScript</summary>
  
Build it    
  `npm run build`{{execute}}

Sign it  
  `wash claims sign calculator.wasm --http_server --name "calculator" --ver 0.1.0 --rev 0 --destination calculator_s.wasm`{{execute}}

</details>

> Notice: We have signed the wasmCloud module with the `--http_server` flag. This essentially gives our actor the permissions it will need to communicate with a `httpserver` provider when the time comes.

Once we run `wash claims sign`, on a wasm module, notice that a new file is dropped with the same name as our original file, with a `_s` appended to it. This is a signed wasmCloud actor. At this point, we can use `wash` to examine the metadata of our branch new actor.

Inspect it:

`wash claims inspect calculator_s.wasm`{{execute}} 
