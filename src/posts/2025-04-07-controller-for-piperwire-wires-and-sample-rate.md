---
published: true
date: 2025-04-06
title: Controller for PiperWire Wires and Sample Rate
tags:
  - programming
  - bash
  - tools
  - pipewire
---
Hey there! It was a Sunday afternoon and I thought it'd be a good idea to create a utility script to automate node connections and change the buffer size for Pipewire.

I use the utilities provided by the [Pipewire Programs](https://docs.pipewire.org/page_programs.html). Its mainly just wrapper commands around `pw-link` and `pw-cli` with some regex to tie everything together.

There is a small by with a division by zero error that occurs when no instances of a process occurs during a query so feel free to modify the code to fix that.

Usage:

deadsec \[option\] \[flags\]

There are 2 main methods that being `link` and `sample`. An example usage for both can follow as:

The following code modifies the buffer size to be 2048 bytes in size

```
# Code for buffer size change

deadsec sample 2048
```

Next is the linker function, where I link all Chrome sources to all Discord Sinks (passing in the -d flag will disconnect rather than create a link).

```
# Code for linking

deadsec link Chrome Discord
```

[Source Code](https://gist.github.com/NeoSahadeo/6febda30e303e994f718d344f7a55bfb)