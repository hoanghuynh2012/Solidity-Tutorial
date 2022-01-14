// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity <=0.8.11;

contract Game {
    string private Bua = 'bua';
    string private Keo = 'keo';
    string private Bao = 'bao';
    uint private temp;
    int32 private result;
    string private expected;
    // Add this function:
    function playGame(string memory val) public returns(string memory) {
        return random(val);
    }
    function random(string memory val) public returns(uint){
        temp = uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp))) % 3 + 1;
        if (keccak256(bytes(val)) == keccak256(bytes(Bua))) {
            result = 1;
        } else if (keccak256(bytes(val)) == keccak256(bytes(Keo))) {
            result = 2;
        } else if (keccak256(bytes(val)) == keccak256(bytes(Bao))) {
            result = 3;
        }
        return temp;
    }
}