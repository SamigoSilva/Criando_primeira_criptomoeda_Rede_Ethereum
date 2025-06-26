# DIO Token - ERC-20 Implementation

![Solidity](https://img.shields.io/badge/Solidity-0.8.0-blue) 
![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-4.9-green)

A secure and gas-efficient ERC-20 token with mint/burn functionality, built with OpenZeppelin.

## Features
- ✅ Fully compliant with ERC-20 standard
- 🔒 Ownable (admin-controlled mint/burn)
- 💰 Fixed supply of 10 DIO tokens (18 decimals)
- 🛠 Extensible with OpenZeppelin modules

## Quick Start

### Prerequisites
- Node.js ≥ 16
- Hardhat (`npm install --save-dev hardhat`)

### Installation
```bash
npm install @openzeppelin/contracts
```
How to Use
```bash
npx hardhat run scripts/deploy.js --network localhost
```
Test:
```bash
npx hardhat test
