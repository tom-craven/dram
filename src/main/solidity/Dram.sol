// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.29;

import {ERC1155} from "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Dram is ERC1155 {
    constructor(address initialOwner, string memory assetUrl, uint256 id, uint256 quantity) ERC1155(assetUrl){
        _mint(initialOwner, id, quantity, "");
    }
}