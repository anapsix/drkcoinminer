## Darkcoin CPUMiner in Docker container

This Docker contains all you need to mine [DarkCoin](http://darkcoin.io/) image includes [ig0tik3d's cpuminer](https://github.com/ig0tik3d/darkcoin-cpuminer-1.2c) and [elmad's fork with avx/aes instruction support|](https://github.com/elmad/darkcoin-cpuminer-1.3-avx-aes). It used AES version if your CPU support AES/AVX.

### Usage

It's very simple to start the miner container, just get your credentials and pass them as environmental variables to the container intance.

    docker run \
      -e POOL_URL="stratum+tcp://drk.cpu-pool.net:3500" \
      -e WORKER_LOGIN="username.workername" \
      -e WORKER_PASSWORD="workerpassowd"   \
      anapsix/drkcoinminer
