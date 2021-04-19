## wash claims

The `wash claims` subcommand is used for generating and managing JWTs for wasmcloud actors.

### wash claims sign

The `wash claims sign` command allows the user to sign a wasm file and couple it with `wasmcloud` capabilities.

> Note: We have included an unsigned `wasm` module within the Katacoda environment named `table_tennis.wasm`. In a different tutorial, we will edit this file, resign it, and deploy the changes without downtime!

#### Example

`claims sign ./table_tennis.wasm -c wasmcloud:httpserver --name "demo" --ver 0.1.0 --rev 0`{{execute}}

The newly signed file will be along side the .wasm file with a `_s` appended to the file name. In this example, we now have `./table_tennis_s.wasm` (as seen in the wash output). Using the `inspect` command, we can see the new cababilities we added!

### wash claims inspect

The `wash claims inspect` command allows the user to view metadata about signed wasmcloud actors.

#### Example

`claims inspect ./table_tennis_s.wasm`{{execute}}

```bash
❯ wash claims inspect ./table_tennis_s.wasm

                            "Demo" - Module
 Account      AD2NOEJORCTIWZU44DIPXZ5WFXCNBFUB5AXAYB6IQFU46QYZORJAYVUN
 Module       MBNQSL5ONN3VJ5ZB3UABHLCP4WYCHGDS2EGOKH4NCGI3WLANFLXQJ7QN
 Expires                                                         never
 Can Be Used                                               immediately
 Version                                                     0.1.0 (0)
 Call Alias                                                  (Not set)
                              Capabilities
 HTTP Server
                                  Tags
 None
```

> Note: your tokens will be different than the ones displayed here.

##### Important Fields

`Module` -> This module token will be how you reference the module within the wasmcloud ecosystem.  
`Capabilities` -> This list shows what capability providers the actor will be allowed to talk to. In this example, the `echo` actor can only communicate with the `HTTP Server` provider. A full list of capabilities can be found [here](https://github.com/wasmCloud/capability-providers#latest-versions).
