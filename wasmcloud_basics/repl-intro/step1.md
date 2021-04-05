## Using wash
`wash` has multiple subcommands, each specializing in one specific area of the wasmcloud development process.

### claims
Generate JWTs for actors, capability providers, accounts and operators. Sign actor modules with claims including capability IDs, expiration, and keys to verify identity. Inspect actor modules to view their claims.
`claims -h`{{execute}}

### ctl
Interact directly with a wasmcloud [control-interface](https://github.com/wasmcloud/wasmcloud/tree/main/crates/control-interface), allowing you to imperatively schedule actors, providers and modify configurations of a wasmcloud host. Can be used to interact with local and remote control-interfaces.
`ctl -h`{{execute}}

### drain
Manage contents of the local wasmcloud cache. wasmcloud manages a local cache that will avoid redundant fetching of content when possible. `drain` allows you to manually clear that cache to ensure you're always pulling the latest versions of actors and providers that are hosted in remote OCI registries.
`drain -h`{{execute}}

### keys
Generate ed25519 keys for securely signing and identifying wasmcloud entities (actors, providers, hosts). Read more about our decision to use ed25519 keys in our [ADR](https://wasmcloud.github.io/adr/0005-security-nkeys.html).
`keys -h`{{execute}}

### par
Create, modify and inspect [provider archives](https://github.com/wasmcloud/provider-archive), a TAR format that contains a signed JWT and OS/Architecture specific binaries for native capability providers.
`par -h`{{execute}}

### reg
Push and Pull actors and capability providers to/from OCI compliant registries. Used extensively in our own CI/CD and in local development, where a local registry is used to store your development artifacts.
`reg -h`{{execute}}
