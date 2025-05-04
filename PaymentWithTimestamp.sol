// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title Payment Logger with Timestamps
/// @author Your Name
/// @notice This contract allows users to send ETH payments and logs the sender, amount, and timestamp.
/// @dev This is a basic example demonstrating how to emit events and track contract balance.

contract PaymentWithTimestamp {

    /// @notice Emitted when a payment is received
    /// @param payer The address of the sender
    /// @param amount The amount of ETH sent (in wei)
    /// @param timestamp The block timestamp when the payment was made
    event PaymentReceived(address indexed payer, uint256 amount, uint256 timestamp);

    /// @notice Accept a payment and emit an event with details
    /// @dev Requires the transaction to include at least 1 wei
    function receivePayment() public payable {
        require(msg.value >= 1 wei, "No payment received");
        emit PaymentReceived(msg.sender, msg.value, block.timestamp);
    }

    /// @notice Returns the current balance of the contract
    /// @return The ETH balance in wei
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
