// Test tracing PoL transaction with call tracer to see high-level call structure
// This validates the call structure of PoL transactions to the distributor contract
// Replace POL_TX_HASH_BLOCK_1 with the actual deterministic PoL transaction hash
>> {"jsonrpc":"2.0","method":"debug_traceTransaction","params":["0x0873e49521d481aedde44a2c009a5ae2289e17e6d6c10c81a703ca11df7e5bbc",{"tracer":"callTracer"}],"id":1}
<< {"jsonrpc":"2.0","result":{"type":"CALL","from":"0x0000000000000000000000000000000000000000","to":"0xd2f19a79b026fb636a7c300bf5947df113940761","value":"0x0","gas":"0x0","gasUsed":"0x5208","input":"0x","output":"0x"},"id":1}