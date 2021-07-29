pragma solidity <=0.5.2;

contract MyPayVendorContract {
    
    //mapping to keep track of several vendors
    mapping(uint => Vendor) public vendors;
    mapping (address => uint) public balance;
    
    uint256 public vendCounter = 0;
    address public issuer;
    uint public issuerBal;
    
    event Sent(address from, address to, string name, uint amount);
    
    constructor() public {
        issuer = msg.sender;
    } 
   
     struct Vendor {

        uint256 _cid;
        string _name;
        address _addr;
        uint256 _owedAmount;
    }
    
    function addVendor(string memory _name, address _addr, uint256 _owedAmount) public {
        
       vendors[vendCounter] = Vendor(vendCounter, _name, _addr, _owedAmount);
       vendCounter++;
       
    }
    //continue
    function issue (address receiver, uint amount) public {
       
        require(msg.sender == issuer);
        require(amount < 1000); //balance is under 1000
        issuerBal += amount;    //track issuer balance
        balance[receiver] += amount; //update issuer's amoount in wallet
            
    }
    
    function send() public {
        
        uint256 j;   //counter for the loop
        //loop to iterate through vendors mapping and pay each vendor according to the vendor count
        for (j = 0; j< vendCounter; j++ ){
            address receiver = vendors[j]._addr;    //vendor's Ethereum address
            uint256 amount = vendors[j]._owedAmount; //amount owed to vendor
            string memory vname = vendors[j]._name;  //vendor's name
            require(amount <= balance[msg.sender], "Invalid number of assets.");
            balance[msg.sender] -= amount; //send the owe amount to the vendor
            balance[receiver] += amount;   // increase the vendor's amount 
            emit Sent(msg.sender, receiver, vname, amount);   //writes to transaction's log
            issuerBal = issuerBal - amount;  //track issuer balance    
        }        
    }

    
}
