pragma solidity ^0.5.15;

contract Profile{
    struct Person{
        string fullName;
        string  residentialAddress;
    }
    
    mapping(uint256 => Person) public persons;    
    
    function registerNow(
        uint256 _aadharNumber, 
        string memory _fullName, 
        string memory _residentialAddress
    ) public{
        persons[_aadharNumber] = Person({
            fullName: _fullName,
            residentialAddress:_residentialAddress
        });
    }
}
