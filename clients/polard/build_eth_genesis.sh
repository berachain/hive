#!/bin/bash

# Extract eth_genesis from polaris_genesis.json
eth_genesis=$(cat polaris_genesis.json | jq -r '.app_state.evm.params.eth_genesis')

# Remove escape characters and format the JSON
formatted_eth_genesis=$(echo -n "$eth_genesis" | sed 's/\\//g' | jq '.')

# Create a new file called genesis.json with formatted_eth_genesis
echo "$formatted_eth_genesis" > genesis.json

echo "Successfully created genesis.json"
