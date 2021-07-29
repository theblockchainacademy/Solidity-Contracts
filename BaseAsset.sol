pragma solidity >=0.5.1;

contract BaseAsset {
   
   //Roles: issuer, payer, payee
   //deploy as 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c
   //issue as  0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c
   //issue 50
   //Complete the Job Status
   //run as 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c
   //send 30 to 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C
   //Check variables and functions
   
   address public issuer;
   mapping (address => uint) public balance;
   address public payee;
   uint public payeeBalance;
   uint public issuerBal;
   address payable mywallet1;
   
   enum JobStatus {incomplete, complete}
   JobStatus public theJobStatus;
   
   function setJobStatusComplete() public {
       theJobStatus = JobStatus.complete;
   }
   
    event Sent(address from, address to, uint amount);

    constructor (address payable _wallet) public payable {
        issuer = msg.sender;
        mywallet1 = _wallet;
         theJobStatus = JobStatus.incomplete;
        
    }

    function issue  (address receiver, uint amount) public payable {
       
        require(msg.sender == issuer);
        require(amount < 1000);
        balance[receiver] += amount;
    }

    // Sends an amount of existing coins
    // from any caller to an address
    function send(address receiver, uint amount) public payable {
        
        if(theJobStatus == JobStatus.complete){
            require(amount <= balance[msg.sender], "Insufficient balance.");
            balance[msg.sender] -= amount;
            balance[receiver] += amount;
            mywallet1.transfer(msg.value);
            emit Sent(msg.sender, receiver, amount);
            payee = receiver;
            payeeBalance = balance[receiver]+100;
            issuerBal = balance[msg.sender];
        }
    }
    
    function getBalance () public view returns (address receiver, uint payeeBal, address sender, uint _payorBal){
        
        return (payee, payeeBalance, issuer, issuerBal);
        
    }
    
}