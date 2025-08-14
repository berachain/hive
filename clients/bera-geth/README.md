## Changes

1. Copy the `clients/go-ethereum` directory to create `clients/bera-geth`:

```sh
cd clients/
cp -r go-ethereum bera-geth
```

2. Update the base image and version in `Dockerfile`:

```diff
- ARG baseimage=ethereum/client-go
- ARG tag=latest

+ # Pull bera-geth image
+ ARG baseimage=ghcr.io/berachain/bera-geth
+ ARG tag=v1.011602.1
```

3. Replace the `geth` binary with `bera-geth` in `Dockerfile`:

```diff
- COPY --from=builder /usr/local/bin/geth /usr/local/bin/geth

+ # Use bera-geth instead of geth
+ COPY --from=builder /usr/local/bin/bera-geth /usr/local/bin/geth
```

## Running simulation tests

Simulations from [`devp2p`](../../simulators/devp2p/) and [`ethereum`](../../simulators/ethereum/) were executed to compare the behavior of `bera-geth` with `go-ethereum`. Results indicate that `bera-geth` operates equivalently in these scenarios.


| Test              | Output of `bera-geth` | Output of  `go-ethereum` | Command                                                       | Comments                                                                                                                                                                          |
|-------------------|-----------------------|--------------------------|---------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `devp2p`          | 82/100                | 82/100                   | `./hive --sim devp2p --client go-ethereum,bera-geth`          | - `discv4` suite has a completion of 32/32 <br> - `discv5` suite has a completion of 6/16<br> - `eth` suite has a completion of 36/40<br> - `snap` suite has a completion of 8/12 |
| `ethereum/engine` | 323/403               | 323/403                  | `./hive --sim ethereum/engine --client go-ethereum,bera-geth` |                                                                                                                                                                                   |                                                                                                                                                                              |