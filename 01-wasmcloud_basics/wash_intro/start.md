## Starting wash

`wash` is a command line interface (CLI) that also supports a fully interactive REPL mode. In order to start the `wash` REPL, we run `wash up`

> Note: This is being run for you after the environment has fully bootstraped. This can take as long as 2 minutes.

```bash
❯ wash up --help
wash-up 0.3.0
Launch wasmcloud REPL environment

USAGE:
    wash up [OPTIONS]

FLAGS:
        --help    Prints help information

OPTIONS:
    -l, --log-level <log-level>    Log level verbosity, valid values are `error`, `warn`, `info`, `debug`, and `trace`
                                   [default: debug]
    -h, --host <rpc-host>          Host for lattice connections, defaults to 0.0.0.0 [env: WASH_RPC_HOST=]  [default:
                                   0.0.0.0]
    -p, --port <rpc-port>          Port for lattice connections, defaults to 4222 [env: WASH_RPC_PORT=]  [default:
                                   4222]
```

### Navigating the UI

There are four main sections of the UI. Starting at the top left is the REPL input box. This is where the user will enter their commands. You can switch between the REPL input window and the Tui target selector by pressing `TAB`.
`help`{{execute}}

To the right of the input screen is the output section. This section shows the results from the command being executed. If the command results in any logs, those are displayed in the Tui Log section.

Below the input box is the TUI Target Selector. This allows the user to select what output they want to see in the TUI Log section (to the right). You will see `EWID` to the left of all the different sources providing logs. These letters represent Error, Warning, Info, and Debug. By default, they are all enabled. To toggle the log levels, use the up and down arrows to select the source and left and right arrows to change the level.

The TUI Log section in the bottom right outputs the logs that the REPL has been configured to display.
