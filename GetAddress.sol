pragma solidity 0.5.1;

contract GetAddress {
    
    address payable public wallet1;
    
    function getMyAddress() public  returns (address _addr1){
        
        wallet1 = msg.sender;
        return wallet1;
        
    }
    
    
}