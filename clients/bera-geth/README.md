## Changes

1. Copy the `clients/go-ethereum` directory to `clients/bera-geth`.

```sh
cd clients/
cp -r go-ethereum bera-geth
```

2. Update the image and version in `Dockerfile`.

```diff
- ARG baseimage=ethereum/client-go
- ARG tag=latest

+ # Pull bera-geth image
+ ARG baseimage=ghcr.io/berachain/bera-geth
+ ARG tag=v1.011602.1
```

3. Update the binary.

```diff
- COPY --from=builder /usr/local/bin/geth /usr/local/bin/geth

+ # Use bera-geth instead of geth
+ COPY --from=builder /usr/local/bin/bera-geth /usr/local/bin/geth
```