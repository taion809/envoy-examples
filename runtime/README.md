What is this?  From the envoy documentation

```
Envoy supports “runtime” configuration (also known as “feature flags” and “decider”). Configuration settings can be altered that will affect operation without needing to restart Envoy or change the primary configuration. The currently supported implementation uses a tree of file system files. Envoy watches for a symbolic link swap in a configured directory and reloads the tree when that happens. This type of system is very commonly deployed in large distributed systems. Other implementations would not be difficult to implement. Supported runtime configuration settings are documented in the relevant sections of the operations guide. Envoy will operate correctly with default runtime values and a “null” provider so it is not required that such a system exists to run Envoy.
```

This example showcases a way to flip a symlink to change runtime configurations

One issue that I ran into with this example is that flipping the symlink
from the host (and not from docker itself) would not trigger a change in envoy.

If you want to see the running config change you should rerun this example with
a virtual machine instead of a docker container.


Sorry
