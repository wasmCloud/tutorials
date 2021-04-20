## Running `wasmcloud`

```bash
wasmcloud 0.18.0

USAGE:
    wasmcloud [FLAGS] [OPTIONS]

FLAGS:
        --allow-live-updates             Allows live updating of actors
        --allow-oci-latest               Allows the use of "latest" artifact tag
        --disable-strict-update-check    Disables strict comparison of live updated actor claims
    -h, --help                           Prints help information
    -V, --version                        Prints version information

OPTIONS:
        --allowed-insecure <allowed-insecure>...    Allows the use of HTTP registry connections to these registries
        --control-credsfile <control-credsfile>     Credsfile for control interface authentication [env: CONTROL_CREDS]
        --control-host <control-host>
            Host for control interface connection [env: CONTROL_HOST=]  [default: 0.0.0.0]

        --control-jwt <control-jwt>
            JWT file for control interface authentication. Must be supplied with control_seed [env: CONTROL_JWT]

        --control-port <control-port>
            Port for control interface connection [env: CONTROL_PORT=]  [default: 4222]

        --control-seed <control-seed>
            Seed file or literal for control interface authentication. Must be supplied with control_jwt [env:
            CONTROL_SEED]
    -l, --label <labels>...                         attach a label to the host - can be used multiple times
    -m, --manifest <manifest>                       Specifies a manifest file to apply to the host once started
        --nsprefix <nsprefix>                       Provide a namespace prefix for the lattice used by this host
        --rpc-credsfile <rpc-credsfile>             Credsfile for RPC authentication [env: RPC_CREDS]
        --rpc-host <rpc-host>                       Host for RPC connection [env: RPC_HOST=]  [default: 0.0.0.0]
        --rpc-jwt <rpc-jwt>
            JWT file for RPC authentication. Must be supplied with rpc_seed [env: RPC_JWT]

        --rpc-port <rpc-port>                       Port for RPC connection [env: RPC_PORT=]  [default: 4222]
        --rpc-seed <rpc-seed>
            Seed file or literal for RPC authentication. Must be supplied with rpc_jwt [env: RPC_SEED]
```
