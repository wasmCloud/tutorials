## Sign your actor
We have provided you with an pre-build actor, `table_tennis.wasm`.  In this step, we are going to use the REPL to sign and inspect the actor.

### claims
Generate JWTs for actors, capability providers, accounts and operators. Sign actor modules with claims including capability IDs, expiration, and keys to verify identity. Inspect actor modules to view their claims.  
`claims -h`{{execute}}


#### Sign you actor
[Description of whats happening]
`claims sign --help`{{execute}}

[Description of whats happening]
`claims sign ./table_tennis.wasm --name 'TableTennis' --http_server`{{execute}}
