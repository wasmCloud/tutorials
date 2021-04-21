## Use your actor
[Description of whats happening]

### ctl
Interact directly with a wasmcloud [control-interface](https://github.com/wasmcloud/wasmcloud/tree/main/crates/control-interface), allowing you to imperatively schedule actors, providers and modify configurations of a wasmcloud host. Can be used to interact with local and remote control-interfaces.  
`ctl -h`{{execute}}  

#### Your wasmcloud runtime
The next few commands will require you to interact a little with the interface.  You'll notice there is an `<ACTOR_ID>` or `<HOST_ID>` in the commands, these will need to be replaced by data provided by `wash`.  First, lets get the `wasmcloud` host id.  The relationship between `wash` and `wasmcloud` is elaborated on in a different tutorial, for now, all you need to understand is that the `HOST_ID` represents the `wasmcloud`   runtime handling our actors and providers.  

`ctl get hosts`{{execute}}    

You should see output similar to  

```
 Host ID                                                   Uptime (seconds)   
 NCNRNT7ATUJ42LPET3K23MMJWWBFBWJUB7P2GQNVMV2KWET7S35ZYQOI  1134
```  
 
NOTE: Do not use the Host ID in this output, it will not be the same as yours! 

#### Start your actor
[Description of whats happening]
`ctl start actor localhost:5000/tabletennis:0.1.0`{{execute}}

#### Call your actor
[Description of whats happening]

Using our Host ID from the above step, lets ask `wash` what `ACTOR_ID` was issued to our new actor.

`ctl get inventory <HOST_ID>`{{copy}}  

You should see something like this.  Now, there is a lot of data that is provided, and in another tutoral, we will delve into this, but for now, we are looking for the Actor ID that cooresponds with our `tabletennis` actor.  From this output, it is `MCES5ZMFSWKPAES7JDYRVKSNPTUMWHUJAMSAJN63ERI5HG4YJUMWGLDA`.  Yours will be different!!

```
Host Inventory (NCNRNT7ATUJ42LPET3K23MMJWWBFBWJUB7P2GQNVMV2KWET7S35ZYQOI)         
                                                                                                  
 hostcore.arch                                              x86_64                                
 repl_mode                                                  true                                  
 hostcore.os                                                macos                                 
 hostcore.osfamily                                          unix                                  
                                                                                                  
 Actor ID                                                   Image Reference                       
 MCES5ZMFSWKPAES7JDYRVKSNPTUMWHUJAMSAJN63ERI5HG4YJUMWGLDA   localhost:5000/tabletennis:0.1.0      
                                                                                                  
 Provider ID                                                Link Name                  Image Reference
 VAHNM37G4ARHZ3CYHB3L34M6TYQWQR6IZ4QVYC4NYZWTJCJ2LWP7S6Z2   __wasmcloud_lattice_cache  N/A        
 VDHPKGFKDI34Y4RN4PWWZHRYZ6373HYRSNNEM4UTDLLOGO5B37TSVREP   default                    N/A
```

Now we have everything we need to play tennis with out actor!  Using your actor ID, we want to send a POST request with a payload of `ping`.  Fortunatly for us, `wash` makes it easy to interact with out actor without having to start any providers.  Remember to replace `<ACTOR_ID>

`ctl call <ACTOR_ID> HandleRequest {"method": "POST", "path": "/", "body": "ping", "queryString":"", "header":{}}`{{copy}}

And thats it! If everything went well, you should see the raw output in the REPL....`pong`!!!
`Call response (raw): ��statusCode�Ȧstatus�OK�header��body�"pong"`

In out next tutorial, we will start here and introduce the provider.  Once we have started a provider and linked it to our actor, we will be able to send POST requests on the commandline via curl!



