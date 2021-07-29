pragma solidity ^0.5.2;

contract myFunctionsModTimeContract {
    
    //array to keep track of several people
    User[] public users;
   
     uint256 public userCounter = 0;
    
    
    address owner;
    
    modifier onlyOwner() {
        
        require (msg.sender == owner);
        _;
        
    }
    
    constructor() public {
        
        owner = msg.sender;
        
    }
    
    
    struct User {
        //uint _id1;
        string _fname;
        string _lname;
        
    }
    
    
    
    function addUser(string memory _fname, string memory _lname) public onlyOwner {
        
        //adding internal function
        addUser();
        users.push(User(_fname, _lname));
        
        
    }
    
    //internal
    function addUser() internal {
        userCounter += 1;
        
    }
    
    
    
}