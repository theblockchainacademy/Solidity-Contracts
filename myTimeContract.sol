pragma solidity ^0.5.1;

contract MyMappingContract {
    
    
   
     uint256 public usrCounter = 0;
    //mapping, key value pair unit  is key person is value
    mapping(uint => User) public users;
    
    address owner;
    address admin;
    uint256 openingTime = 1571057400 ;
    
    
    
    modifier onlyWhileOpen() {
        
        require (block.timestamp >= openingTime);
        _;
        
    }
    //onlyWhileOpen()
    //onlyOwner()
    modifier onlyOwner() {
        
        require (msg.sender == owner);
        _;
        
    }
    
    constructor() public {
        
        admin = msg.sender;
        
    }
    
    
    struct User {
        uint _id1;
        string _fname;
        string _lname;
        
    }
    
    modifier onlyadminUser() {
        
        require (msg.sender == admin);
        _;
        
    }
    
    function addUser(string memory _fname, string memory _lname) public onlyWhileOpen {
        
        //adding internal function
        addUser();
        users[usrCounter] = User(usrCounter, _fname, _lname);
    }
    
   
    function addUser() internal {
        usrCounter += 1;
        
    }
    
   
   
   
    function addUserCnt() internal {
        usrCounter += 1;
        
    }
    
    
}