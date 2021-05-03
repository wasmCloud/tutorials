# Your First wasmCloud Actor!

Congrats on making it this far! Now it is time to take the take what we have learn from the basics courses and build our first actor. _How about a calculator?_

In this tutorial, we have provided you with 3 implementations of the same calculator app. They are written in Rust, Go, and AssemblyScript. You can choose your own adventure, or you can do them all! One of the tenets of wasmCloud is that it allows you to build on the polyglot power of WebAssembly.

By the end of this tutorial you should have an understanding of:

- How wasmCloud leverages the polyglot power of WebAssembly
- Signing a wasm module with `wash`
- Pushing a signed wasmCloud module to an OCI compliant registry
- Modifying a wasmCloud manifest file
- Initializing `wasmcloud` with your manifest file and calling your actor
