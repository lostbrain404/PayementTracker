# PaymentWithTimestamp

A simple Ethereum smart contract to receive and track ETH payments, including logging the sender, amount, and timestamp.

## 📄 Contract Summary

- **Language:** Solidity
- **Version:** ^0.8.24
- **Purpose:** Accept ETH payments and log them using events
- **Event:** Logs the sender address, amount, and block timestamp

## 🔧 Features

- Accepts ETH via `receivePayment()` function
- Emits a `PaymentReceived` event with:
  - Sender address
  - Amount in wei
  - Timestamp of the block
- Exposes a public `getBalance()` view function to check contract balance

## 🧪 How to Test (Using Remix)

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Paste the contents of `PaymentWithTimestamp.sol`
3. Compile using Solidity 0.8.24 or later
4. Deploy to the JavaScript VM
5. Call `receivePayment()` while sending ETH with the transaction
6. Check `getBalance()` or view the event logs

