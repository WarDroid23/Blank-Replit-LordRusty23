kitchen-transport-docker
============

If you run test-kitchen using docker, speed up your tests by using docker cp instead of an SSH-based transport.

kitchen-transport-docker uses the kitchen ssh transport for everything but uploading files. For that, it uses docker cp.


Quick Start
-----------

Run `chef gem install kitchen-transport-docker` and then set your transport to `dockercp`:

```
transport:
  name: dockercp
```
