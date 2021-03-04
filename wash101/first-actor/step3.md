## Push signed actor to registry
The Katacoda environment we have provided here comes with an OCI complient registry running in the background.  In this step, we are going to push our signed actor to the registry using `wash`.

### reg
Push and Pull actors and capability providers to/from OCI compliant registries. Used extensively in our own CI/CD and in local development, where a local registry is used to store your development artifacts.  
`reg -h`{{execute}}


#### Push your actor
[Description of whats happening]
`reg push localhost:5000/tabletennis:0.1.0 ./table_tennis_s.wasm --insecure`{{execute}}
