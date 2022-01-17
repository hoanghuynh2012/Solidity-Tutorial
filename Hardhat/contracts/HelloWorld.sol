// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract HelloWorld {
    string public myName = "Hello World!";

    constructor() {
        console.log(myName);
    }
}