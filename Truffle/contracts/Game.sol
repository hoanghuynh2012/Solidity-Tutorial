// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity <=0.8.11;

contract Game {
    // enum Status {
    //     Drawn,
    //     Your are win,
    //     You are loser
    // }
    // Status private result;
    string private result;
    event PlayGame(string val);
    // Add this function:
    function playGame(string memory _val) public returns(string memory) {
        return _random(_val);
    }
    function _random(string memory _val) private returns(string memory){
        uint numberRandom;
        int32 temp;
        numberRandom = uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp))) % 3 + 1; 
        // gan data
        if (keccak256(bytes(_val)) == keccak256(bytes('bua')) || keccak256(bytes(_val)) == keccak256(bytes('Bua'))) {
            temp = 1;
        } else if (keccak256(bytes(_val)) == keccak256(bytes('keo')) || keccak256(bytes(_val)) == keccak256(bytes('Keo'))) {
            temp = 2;
        } else if (keccak256(bytes(_val)) == keccak256(bytes('bao')) || keccak256(bytes(_val)) == keccak256(bytes('Bao'))) {
            temp = 3;
        } else {
            result = "No valid (Bua, Keo or Bao)";
        }
        //Bua == 1, Keo == 2 , Bao == 3
        if(temp == int(numberRandom)){
            result = "Drawn";
            //result = Status.Drawn;
        } else if(temp == 1 && int(numberRandom) == 2){ //Bua thang
            result = "You Win";
        } else if(temp == 1 && int(numberRandom) == 3){ //Bua thua
            result = "You Lost";
        } else if(temp == 2 && int(numberRandom) == 3){ //Bao thang
            result = "You Win";
        } else if(temp == 2 && int(numberRandom) == 1){ //Keo thua
            result = "You Lost";
        } else if(temp == 3 && int(numberRandom) == 1){ //Bua thang
            result = "You Win";
        } else if(temp == 3 && int(numberRandom) == 2){ //Bua thua
            result = "You Lost";
        }
        PlayGame(_val);
        return result;
    }
}