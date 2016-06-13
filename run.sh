#!/usr/bin/env bash
while inotifywait -e modify -e move -e create -e delete ./koans; do
    sbcl --script contemplate.lsp;
done
