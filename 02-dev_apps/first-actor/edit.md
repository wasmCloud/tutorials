Now that we have verified we have a functional `wasmcloud` actor, lets work on enhancing it. The `TODO` asks us to implement multiplication...too easy.

<details>
  <summary>Rust</summary>

  <pre class="file" data-filename="rust/src/lib.rs" data-target="insert" data-marker="// TODO: add multiplication">

```
  "/mult" => {
    let mult = nums[0].parse::<i32>().unwrap() * nums[1].parse::<i32>().unwrap();
    ret = format!("multiply: {} * {} = {}", nums[0], nums[1], mult);
    break;
  }
```

  </pre>

> Note: You can click the above section and it will insert itself into the code block.

</details>
<details>
  <summary>Go</summary>

  <pre class="file" data-filename="go/main.go" data-target="insert" data-marker="// TODO: add multiplication">

```
  case "/mult":
    ret = "multiply: " + nums[0] + " * " + nums[1] + " = " + strconv.Itoa(num0*num1)
```

  </pre>

> Note: You can click the above section and it will insert itself into the code block.

</details>
<details>
  <summary>Assembly Script</summary>

?????

</details>

Now we can rebuild, re-sign, publish, start, and test our actor!
