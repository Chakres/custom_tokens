# Custom Token Contract

## Description

This project presents a Solidity smart contract that implements a basic custom token on the Ethereum blockchain. The contract allows for the creation, transfer, and burning of tokens, showcasing the fundamental functionalities of token management.

## Getting Started

### Installing

To utilize this contract, follow these steps:

1. Download the provided Solidity contract code.
2. Deploy the contract using an Ethereum development environment, such as Remix or Truffle.
3. Deploy the contract on a testnet or a local blockchain for testing.

### Executing program

To interact with the deployed contract:

1. Mint new tokens by calling the `createTokens` function.
2. Transfer tokens to other addresses using the `transferTokens` function.
3. Burn tokens using the `destroyTokens` function to reduce the token supply.

Here's an example of how to interact with the contract:

1. Mint tokens:
   solidity
   createTokens(addressToMintTo, amountToMint);
   

2. Transfer tokens:
   solidity
   transferTokens(addressToTransferTo, amountToTransfer);
   

3. Burn tokens:
   solidity
   burnTokens(amountToBurn);
   

## Help

If you encounter any issues or have questions, you can seek assistance by opening an issue on the GitHub repository

## Authors

K Chakresh

## License

This project is licensed under the MIT License. See the LICENSE.md file for details.
