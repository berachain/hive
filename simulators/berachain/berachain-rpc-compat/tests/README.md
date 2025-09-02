To generate these .json and rlp files, run 

`hivechain generate -fork-interval 0 -tx-interval 1 -length 45 -outdir ./simulators/berachain/berachain-rpc-compat/tests/ -outputs genesis,chain,headfcu,accounts,forkenv,headblock,txinfo -berachain`

Then, replace the `HIVE_TERMINAL_TOTAL_DIFFICULTY` to `0` in `forkenv.json` and `"terminalTotalDifficulty": 0` in `genesis.json`
