pragma solidity ^0.5.15;

contract Donation{
    struct Donor {
        address donorAddress;
        uint256 donationAmount;
        string donorName;
    }
    
    address public  manager;
    Donor[] public donors;
    
    event NewDonation(
            address donorAddress,
            uint256  donationAmount
        ); 
    constructor() public {
        manager = msg.sender;
    }
    
    function donateNow(string memory _donorName) public payable {
        require(msg.value >= 0.0005 ether,'not sent enough donation');
        donors.push(
            Donor({
            donorAddress: msg.sender,
            donationAmount: msg.value,
            donorName: _donorName
        })
        );
        emit  NewDonation(msg.sender, msg.value);   
    }
    
    function getNoOfDonations() public view returns (uint256){
        return donors.length;
        
    }
    
    function getBalance() public view returns (uint256){
        return address(this).balance;
    }
    
    function payVendor(address _vendorAddress,   uint256 _amountToTransfer) public {
        require(msg.sender == manager, 'only manager can call');
        
        address(uint160(_vendorAddress)).transfer(_amountToTransfer);
        // from solidity 0.6.0 and above use below code
        // instead of above
        // payable(_vendorAddress)
        
    }
}
