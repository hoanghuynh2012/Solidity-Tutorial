// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity <=0.8.11;

contract HelloWorld {
    string public myName = "Hello World!";
    // Add this function:
        function getMyName() public view returns(string memory) {
            return myName;
        }
        function changeMyName(string memory _newName) public returns(string memory) {
            myName = _newName;
            return myName;
        }
}