Depending on which language you are using in this tutorial, expand the box and lets review our objective for the calculator

> Note: Remember that `wasmcloud` leverages the [contract driven development](https://wasmcloud.dev/app-dev/create-provider/cdd) pardigm. When developing our actor, we will be satisfying the `wasmcloud:httpserver` contract. The contract can be reviewed in [github](https://github.com/wasmCloud/actor-interfaces/blob/main/http-server/httpserver.widl).

<details>
  <summary>Rust</summary>
  First thing, lets open the file where our calculators logic exists  
  
  `rust/src/lib.rs`{{open}}  
  
  On line 12 we start writing our business logic.  We receive an HTTP request, check its path for `add`, `sub`, or `div`, and preform the operation on the provided input.  Our example is a bit contrived as we are doing no error checking or input validation, but all that can be added in at the developers desire!
  
  Our help is needed on line 28.  The original developer needs assistance implementing the multiplication feature.
  
</details>
<details>
  <summary>Go</summary>
  First thing, lets open the file where our calculators logic exists   
  
  `go/main.go`{{open}}  
  
  On line 25 we start writing our business logic.  We receive an HTTP request, check its path for `add`, `sub`, or `div`, and preform the operation on the provided input.  Our example is a bit contrived as we are doing no error checking or input validation, but all that can be added in at the developers desire!
  
  Our help is needed on line 37.  The original developer needs assistance implementing the multiplication feature.   
</details>
<details>
  <summary>AssemblyScript</summary>
  First thing, lets open the file where our calculators logic exists   
  
  `assemblyscript/assembly/index.ts`{{open}}  
  
  On line 13 we start writing our business logic.  We receive an HTTP request, check its path for `add`, `sub`, or `div`, and preform the operation on the provided input.  Our example is a bit contrived as we are doing no error checking or input validation, but all that can be added in at the developers desire!
  
  Our help is needed on line 25.  The original developer needs assistance implementing the multiplication feature.   
</details>

Before we start to edit the previous developers code, lets make sure it actually works....
