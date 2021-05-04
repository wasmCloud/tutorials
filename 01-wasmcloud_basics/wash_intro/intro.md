```
                                     _                 _    _____ _          _ _
                                ____| |               | |  / ____| |        | | |
 __      ____ _ ___ _ __ ___  / ____| | ___  _   _  __| | | (___ | |__   ___| | |
 \ \ /\ / / _` / __| '_ ` _ \| |    | |/ _ \| | | |/ _` |  \___ \| '_ \ / _ \ | |
  \ V  V / (_| \__ \ | | | | | |____| | (_) | |_| | (_| |  ____) | | | |  __/ | |
   \_/\_/ \__,_|___/_| |_| |_|\_____|_|\___/ \__,_|\__,_| |_____/|_| |_|\___|_|_|
```

## Why wash

`wash` is a bundle of command line tools that, together, form a comprehensive CLI for [wasmcloud](https://github.com/wasmcloud/wasmcloud) development. Everything from generating signing keys to a fully interactive REPL environment is contained within the subcommands of `wash`. Our goal with `wash` is to encapsulate our tools into a single binary to make developing WebAssembly with wasmcloud painless and simple.

### Objectives

In this lesson, we will discuss the high level functionality of `wash`. At the end of the could, you should be able to:

- start and interact with the `wash` REPL
- understand the most commonly used subcommand's functionality
- Sign a custom wasm actor
- Run a basic HTTP server
