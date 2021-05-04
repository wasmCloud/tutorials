As we learn in the introduction to `wasmcloud`, we can bootstrap the runtime with a manifest file. Here, we are going to do a quick review of the file.

<details>
  <summary>Rust</summary>
  
  `rust/manifest.yaml`{{open}}
  
</details>
<details>
  <summary>Go</summary>

`go/manifest.yaml`{{open}}

</details>
<details>
  <summary>Assembly Script</summary>

`assemblyscript/manifest.yaml`{{open}}

</details>

It is important to notice that `actor` fields in the link has an ID provided. That ID will NOT be the same for you on your system. We have two options:

- You can use `wash` to give you the actor ID of your actor
  `wash claims inspect calculator_s.wasm`{{execute}}
- You can use the environmental variable to override the current ID
  `export CLIENT_ACTOR=$(wash claims inspect calculator_s.wasm -o json | jq -r '.module')`{{execute}}

Once you have the `manifest.yml` updated with the correct `actor_id`, you can start the run time and interface with your actor!

> Note: At this point, everything is in place to test the current state of the actor!
> `wasmcloud --allowed-insecure localhost:5000 -m manifest.yaml`{{execute}} > `curl localhost:8080/add?5,5 --output -`{{execute T2}}
