## The manifest.yaml file

A `wasmcloud` manifest file is a representation of a desired set of contents running in an instance. It can include actors, capability providers, host labels, and link definations. Below is an example of a manifest file that will bootstrap the `wasmcloud` runtime with an echo server actor, an http server provider, and link the two.

Click the following section to preview in the IDE...

<pre class="file" data-filename="manifest.yaml" data-target="replace">
labels:
    sample: "wasmcloud echo"
actors:
    - "wasmcloud.azurecr.io/echo:0.2.1"
capabilities:
    - image_ref: "wasmcloud.azurecr.io/httpserver:0.12.1"
      link_name: default
links:
    - actor: ${ECHO_ACTOR:MBCFOPM6JW2APJLXJD3Z5O4CN7CPYJ2B4FTKLJUR5YR5MITIU7HD3WD5}
      provider_id: "VAG3QITQQ2ODAOWB5TTQSDJ53XK3SHBEIFNK4AYJ5RKAX2UNSCAPHA5M"
      contract_id: "wasmcloud:httpserver"
      link_name: default
      values:
        PORT: 8080
</pre>

### A breakdown

> Note: We will leverage the power of `wash` to explain where some of the manifest inputs come from. `wash` is the WAshcloud SHell and provides the developer with a ton of powerful tooling. It is highly recommended that you visit the `wash Introduction` tutorial to learn about its capabilities.

##### Labels

Labels are a set of arbitrary key-value pairs that are associated with the host. Host labels can be queried as part of lattice interrogations and used by the auction process of the wasmcloud control interface to determine scheduling suitability for actors and providers. This section is optional.

##### Actors

The actor section contains a list of actor references. An actor reference in a host manifest can be either the actor’s public key, the OCI image reference URL of the actor as stored in an OCI registry, or a path to a `.wasm` file. This section is mandatory, so if you do not wish to start any actors, supply the format equivalent of an empty list/array.
To find an actors public key, we leverage `wash`:
`wash claims inspect wasmcloud.azurecr.io/echo:0.2.1`{{execute}}

##### Capabilities

This section contains a list of capability descriptions. A capability description is a structure that provides the minimal amount of information required for the wasmCloud host to load and start a capability provider. Capability descriptions contain the following fields:

- `image_ref` - This is a required field that contains the OCI image reference of a capability provider. If you want to launch a local capability provider via manifest, then you’ll have to ensure that it’s stored in a local registry and you provide the local registry URL.
- `link_name` - This field is optional and contains the name of the provider as a target for links. If you leave this value out of the manifest, wasmCloud will use the default link name of default.

##### Links

The links section is a required field contains a list of “link definitions”. If you do not have any link definitions, you will have to supply the format equivalent of an empty list or array (e.g. []). A link definition contains the following fields:

- `actor` - The public key of the actor in this link. Note that even if you start an actor via an OCI reference, you must only ever use the actor’s public key in a link definition.
- `provider_id` - The public key of the provider in this link.
  Again, to find the public key, we ask `wash`:
  `wash par inspect wasmcloud.azurecr.io/httpserver:0.12.1`{{execute}}
- `contract_id` - The contract ID of the link. This corresponds to the contract ID supported by the specific capability provider being linked, e.g. wasmcloud:httpserver or wasmcloud:keyvalue, etc.
- `link_name` - Optional field, specify this value if you are referring to a provider that used an alternate link name when being started.
- `values` - Optional map, contains key-value pairs to be supplied as the per-actor configuration sent to the capability provider at link time.
