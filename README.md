# Cadence Flow NFT Example

This project contains a sample NFT contract that inherits the NFT implementation contract for the Flow blockchain

## Key Features
- NFT Resource: Defines a unique digital asset with properties like name, favorite food, and lucky number.
- Collection Resource: Manages a collection of NFTs, allowing users to deposit, withdraw, and view their NFTs.
- Minter Resource: Creates new NFTs with specified properties.
- Events: Emits events for contract initialization, NFT withdrawals, and deposits.

## Scripts
Includes a script to retrieve and log NFT metadata.

## Transactions:
Includes two transactions: one to create a new collection and another to deposit an NFT into a collection.

## Usage
- Create a new collection: Run the CreateCollection.cdc transaction to create a new collection.
- Mint a new NFT: Run the DepositNFT.cdc transaction to mint a new NFT and deposit it into a collection.
- View NFT metadata: Run the main script to retrieve and log NFT metadata.

## Project Tree
```
.
 |-Contracts
 | |-CryptoPoops.cdc
 | |-NonFungibleToken.cdc
 |-Scripts
 | |-GetNFTMetadata.cdc
 |-Transactions
 | |-CreateCollection.cdc
 | |-DepositNFT.cdc
 | |-TransferNFT.cdc
 |-README.md
```