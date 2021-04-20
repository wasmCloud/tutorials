## wash ctl

The `wash ctl` subcommand is used for interacting with the `wasmcloud` control interface. This command has many subcommands that allow you to query runtime for a lot of different information. In this rundown, we will cover a few of the most used.

### wash ctl get hosts

The `wash ctl get hosts` command allows the user to get a list of the `wasmcloud` hosts in their ecosystem. One of the coolest features of the `wash up` command, is that it starts a `wasmcloud` runtime for you!

#### Example

`ctl get hosts`{{execute}}

The `wash` REPL will provide you with the HostID of your `wasmcloud` host. Using `wash` in a standalone environment (like we are here) will display only one ID; however, it is important to remember, in a production deployment, you could see a long list of IDs here.

You will want to copy this ID as we will use it in later steps.

### wash ctl get inventory <HOST-ID>

When the user wants to see what `wasmcloud` modules are deployed on a host, they will want to query the inventory of a specific host.

#### Example

`ctl get inventory <HOST-ID>`{{copy}}

> Note: In this example, you will need the Host ID that was output from the previous command.

```bash
                Host Inventory (NASMS<..SNIP..>MXJVI)

 hostcore.os                                        macos
 hostcore.arch                                      x86_64
 hostcore.osfamily                                  unix
                     No actors found

 Provider ID            Link Name                  Image Reference
 VDHPK<..SNIP..>SVREP   default                    N/A
 VAHNM<..SNIP..>7S6Z2   __wasmcloud_lattice_cache  N/A
```

> Note: The output has been condensed for the tutorial. Your tokens will be 56 characters long and differ from the ones displayed here.

##### Important Fields

In this example, you'll notice in the middle of the output `No actors found`. So far, we do not have any actors running in this environment. Next, we will start the `table_tennis` actor and you will be able to see it here.

Below the actor output is running provider information.
[TODO: Describe what the 2 items in the provider section are for.]

### wash ctl start actor

In order to start an actor (or provider), we must envoke the `wash ctl start` command. This is the first step to running our business logic in the `wasmcloud` ecosystem.

#### Example

`ctl start actor wasmcloud.azurecr.io/echo:0.2.1`{{execute}}

> Note: Since we have not added our `table_tennis` actor to the registry yet, we will start the `echo` actor that is in the `wasmcloud` container registry.

The output will confirm that we have started an actor. Now, we will be able to check out inventory again and see an actor running.

`ctl get inventory <HOST-ID>`{{copy}}

> Note: You can use the up arrow within the wash REPL to re-run commands from your history.

```bash
<SNIP>

Actor ID                 Image Reference
MBCFOP<..SNIP..>HD3WD5   wasmcloud.azurecr.io/echo:0.2.1

<SNIP>
```

### wash ctl start provider

Just like starting an actor, you can start a provider with the `wash ctl start` command. To know what provider we should start for the echo actor, we can inspect it and see what capabilities it has.

> Note: Remember from the previous screen, you can use `wash inspect` to see what capabilities an actor has. The `echo` actor has the HTTP Server capability.

#### Example

`ctl start provider wasmcloud.azurecr.io/httpserver:0.12.1`{{execute}}

Once again, you will see the output that your provider started successfully and you can verify it by checking the inventory.

### wash ctl link

Now that you have the actor and the provider running, you need to tell them to communication with con another. This is done in the linking process via `wash ctl link`. We are going to tell the `wasmcloud` runtime that we want our actor talking with out provider, and give it a few settings to do to.

> Note: In this example, you will need both the ACTOR ID and the PROVIDER ID that is provided from the inventory output. If you run the `get inventory` command, you will have that information in the output window while you are typing the link command.

#### Example

`ctl link <ACTOR-ID> <PROVIDER-ID> wasmcloud:httpserver PORT=8080`{{copy}}

If you were to view the help for this command, you would see that the `wasmcloud:httpserver` piece is refered to as the "contract ID". These contracts can be found in this [repo](https://github.com/wasmCloud/actor-interfaces).

At this point, you should see your request echoed back to you.
`curl localhost:8080`{{execute T2}}
