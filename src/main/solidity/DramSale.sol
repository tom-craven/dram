// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import {Dram} from "./Dram.sol";

contract DramSale is Ownable, ReentrancyGuard, ERC1155Holder {
    using SafeERC20 for IERC20;
    using Math for uint;
    using Math for Dram;
    
    Dram private token;
    IERC20 public paymentToken; // The ERC20 token used for payment
    uint public tokenPrice;
    uint public tokenSold;

    constructor(Dram _address, IERC20 _paymentToken, uint _price) Ownable(msg.sender) {
        token = _address;
        paymentToken = _paymentToken;
        tokenPrice = _price;
    }

    function buyToken(uint _amount, uint id) public nonReentrant {
        require(token.balanceOf(address(this), 1) >= _amount, "Insufficient token balance");
        
        // Calculate payment amount
        uint paymentAmount = _amount * tokenPrice;
        
        // Transfer payment tokens from buyer to contract
        paymentToken.safeTransferFrom(msg.sender, address(this), paymentAmount);
        
        // Update sold amount
        (bool success, uint newTokenSold) = Math.tryAdd(tokenSold, _amount);
        require(success, "Error updating tokens sold");
        tokenSold = newTokenSold;
        
        // Transfer Dram tokens to buyer
        token.safeTransferFrom(address(this), msg.sender, id, _amount, "");
        
       // emit Sale(msg.sender, _amount);
    }

    function balance() public view returns (uint){
        uint amountToken = token.balanceOf(address(this),1);
     //   uint amountAvax = address(this).balance;
        return amountToken;
    }

    // Add function to withdraw ERC20 payment tokens
    function withdrawPaymentTokens() public onlyOwner {
        uint balance = paymentToken.balanceOf(address(this));
        require(balance > 0, "No payment tokens to withdraw");
        paymentToken.safeTransfer(msg.sender, balance);
    }
}