*** TO CREATE A NEW FOUNDRY PROJECT IN A NEW FOLDER WITH ALL REQUIRED FILES: ***
   
   ```forge --init```

   or

    ```forge init```

to load all files. Then,

```chainlink brownie```

*** TO DEPLOY A CONTRACT TO ANVIL USING FORGE W/ ENCRYPTED PRIVATE KEY: ***
    ```forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --account defaultKey --sender 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --broadcast -vvvv```
    
*** TO DEPLOY A CONTRACT TO ALCHEMY USING FORGE W/ AN UENCRYPTED PRIVATE KEY: ***

    // 1. Load .env data 
    
    ```source .env```
    
    // 2. Run forge script cmd to Deploy
   
   ```forge script script/DeploySimpleStorage.s.sol --rpc-url $ALCHEMY_RPC_URL --private-key $PRIVATE_KEY --broadcast -vvvv```

*** TO SEND A TRANSACTION USING CAST AND ANVIL W/ ENCRYPTED PRIVATE KEY: ***
    ```cast send 0xa513E6E4b8f2a923D98304ec87F64353C4D5C853 "store(uint256)" 555 --rpc-url http://127.0.0.1:8545 --account defaultKey```

*** TO CALL A TRANSACTION USING CAST AND ANVIL W/ ENCRYPTED PRIVATE KEY: ***
    ```cast call 0xa513E6E4b8f2a923D98304ec87F64353C4D5C853 "retrieve()"```

*** TO CONVERT FROM HEX CODE TO DECIMAL NUMBERS ***
    ```cast --to-base <Hex_Code> dec```
