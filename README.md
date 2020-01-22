# Lumen sample code

This is an example Elixir project for building Elixir code that can be run using Lumen. This is a project for the early days, I'm sure it will be irrelevant in a short while but it was created for helping people try the project in its current state.

It was made to work with **the existing Lumen example** called `interpreter-in-browser`. It is in other words an interpreter in the browser rather than compiled.

## Compiling Elixir to Erlang

You'll want to install the `mix decompile` command as described here: https://github.com/lumen/lumen/tree/develop/liblumen_eir_interpreter#elixir-code

You can edit `lib/ex_sample.ex` and then the `build.sh` command will do the necessary song and dance to decompile, strip out the compile bit and then you can grab the `Elixir.ExSample.erl` and throw it wherever the Lumen example lives. So let's get into that bit.

## Getting the Lumen example running

Make sure you have what is needed to run Lumen, as detailed here: https://github.com/lumen/lumen

Then do the steps from this example instruction https://github.com/lumen/lumen/tree/develop/examples/interpreter-in-browser, just follow the headings.

Build, link and run it manually.

Inside that example there is a `foo.erl` in the `www` folder. You can add your own `.erl` file and edit the `index.js` file to load it. It loads `foo.erl` by default. I did this:

```
compile_url("ex_sample.erl").then(() => {
  let heap = new Interpreter.JsHeap(1000);
  let num = heap.integer(12);
  console.log("spawning...");
  heap.spawn("Elixir.ExSample", "run_me", [num], 100000);
});
```
