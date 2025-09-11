// Test fee history across Prague1 and Prague2 hardforks to verify minimum base fee enforcement
// Prague1 (timestamp 20, ~block 2): minimum base fee = 1 gwei (0x3b9aca00)
// Prague2 (timestamp 40, ~block 4): minimum base fee = 1 wei (0x1)
>> {"jsonrpc":"2.0","method":"eth_feeHistory","params":["0x6","latest",null],"id":1}
<< {"jsonrpc":"2.0","id":1,"result":{"oldestBlock":"0x28","baseFeePerGas":["0x1935c76b","0x1935c76b","0x1935c76b","0x1935c76b","0x1935c76b","0x1935c76b","0x1935c76b"],"gasUsedRatio":[0.0,0.0034104511927983193,0.0034104511927983193,0.0034104511927983193,0.0034104511927983193,0.0034104511927983193],"reward":[]}}