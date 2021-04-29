# Your First wasmcloud Actor!

Congrats on making it this far!  Now it is time to take the take what we have learn from the basics courses and build our first actor.  How about a calculator?!

In this tutorial, we have provided you with 3 implementations of the same calculator app.  They are written in Rust, Golang, and AssemblyScript.  You can choose your own adventure, or you can do them all!  One of the tenants of wasmcloud is that it allows you to build on the polyglot power of Webassembly.  

By the end of this tutorial you should have an understanding of:
- How wasmcloud leverages the polyglot power of webassembly
- Signing a wasm module with `wash`
- Pushing a signed `wasmcloud` module to an OCI compliant registry
- Modifying a `wasmcloud` manifest file
- Initializing `wasmcloud` with your manifest file and calling your actor
