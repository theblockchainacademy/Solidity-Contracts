pragma solidity ^0.5.1;

contract mySendReceiveEther {
    
   //Roles: Payer and payee
   //Deploy with 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C
   //Run as  //Roles: Payer and payee
   //Deploy with 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C
   //Run as 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c
   //Enter 5 Ether 
   //buyAsset
   //Enter 5 Ether 
   //buyAsset
   
   
   mapping(address => uint256 ) public balance;
   address payable mywallet1;
   
   enum Status {working, completed}  //leave thes commensts: eum to let the owner set the staus of a job
    Status public myJobStatus;
   
   event Purchase (
        address _buyer,
        uint256 _amount
        
    );
    
   constructor (address payable _wallet) public {
        mywallet1 = _wallet;
        
    }
    
    
   function buyAsset() public payable{
       //the msg.sender is the deployer or owner the owner’s balance is increased by 1
       //the msg.transfer moves ether to another wallet. The transfer amount is msg.value   
       
        balance[msg.sender] += 1;
        mywallet1.transfer(msg.value);
        //send ether to a wallet
        emit Purchase(msg.sender, 1);
    }

    
    
}
