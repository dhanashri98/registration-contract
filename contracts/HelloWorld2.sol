pragma solidity ^0.5.15;

contract HelloWorld2 {
    
    string name="Dhanu";
    function seeName() public view returns (string memory) {
        return name;
    }

    function updateName(string memory _newName) public {
        name= _newName;
    }
    
}
