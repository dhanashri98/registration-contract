pragma solidity  ^0.5.13;

// this is comment

/* this is multi line 
comment */

contract HelloWorld {
    // uint8: 0=>255 
    // int8: -128=>127
    // uint256
    
    uint256 myRollNumber; //00000000000000000
    
    constructor(uint256 _startRollNumber) public {
        myRollNumber = _startRollNumber;
    }
    
    function showMyRollNumber() public view returns (uint256) {
        return myRollNumber;
    }
     
    function updateRollNumber(uint256 _newRollNumber) public  {
        myRollNumber = _newRollNumber;
    }  
}
