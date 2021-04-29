# Running wasmCloud

`wasmcloud --help`{{execute}}

wasmCloud is more than just a binary, it's also a reusable Rust library and an ecosystem of tools.
Each wasmCloud host that you start can be thought of as an empty vessel that is ready to run [actors](https://wasmcloud.dev/reference/host-runtime/actors/) and [capability providers](https://wasmcloud.dev/reference/host-runtime/capabilities/).

This host then checks the capabilities allowed for any given actor and securely dispatches messages between actors and capabilities. If the wasmCloud host is running in _[lattice](https://wasmcloud.dev/reference/lattice/) mode_ (often referred to by the community as "multiplayer" mode), then these message dispatches can be sent across any number of intermediary hops to their destinations. This allows wasmCloud hosts to automatically join self-forming and self-healing _lattice_ mesh networks.

Starting the host with no arguments starts the process "empty", where it will expect to be told via remote control to schedule actors, capability providers, and establish links between them.

You can optionally start the host with a _[manifest](https://wasmcloud.dev/reference/host-runtime/manifest/)_ file, which contains a list of actors, providers, and link definitions to apply to the host once it starts up.

You can try running the host on its own, then run the host on its own in the presence of a NATS server locally (this will put you in _lattice_ ("multiplayer") mode, and in either case you can use the `-m` option at startup to supply a manifest file.
