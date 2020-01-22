#!/bin/bash

mix compile && \
mix decompile --to erl ExSample && \
grep -v "no_auto_import" "./Elixir.ExSample.erl" > "./Elixir.ExSample.erl"
