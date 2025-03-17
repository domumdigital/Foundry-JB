*** TO DEPLOY A CONTRACT USING FORGE AND ANVIL W/ ENCRYPTED PRIVATE KEY: ***
    forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --account defaultKey --sender 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --broadcast -vvvv

*** TO SEND A TRANSACTION USING CAST AND ANVIL W/ UNENCRYPTED PRIVATE KEY: ***
    cast send 0xa513E6E4b8f2a923D98304ec87F64353C4D5C853 "store(uint256)" 555 --rpc-url http://127.0.0.1:8545 --account defaultKey

*** TO CALL A TRANSACTION USING CAST AND ANVIL W/ UNENCRYPTED PRIVATE KEY: ***
    cast call 0xa513E6E4b8f2a923D98304ec87F64353C4D5C853 "retrieve()"

*** TO CONVERT FROM HEX CODE TO DECIMAL NUMBERS ***
    cast --to-base <Hex_Code> dec

    SHORTCUT COMMIT