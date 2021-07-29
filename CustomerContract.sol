pragma solidity >=0.5.2;

contract CustomerContract {
    
    enum Status {ready, opened, closed}
    Status public myStatus;
    
     int256 public custCnt = 0;
    
    Customer[] public customers;
    
    constructor() public{
        myStatus = Status.closed;
    }
    
    function myReady() public {
        myStatus = Status.ready;
    }
    
    function myOpened() public {
        myStatus = Status.opened;
    }
    
    function myClosed() public {
        myStatus = Status.closed;
    }
    
    function getMyStatus() public view returns (Status _stat, string memory _strstat){
        
        if(myStatus == Status.ready){
            string memory stat1 = "ready";
            return (myStatus, stat1);
        }
        else if (myStatus == Status.opened) {
            string memory stat1 = "opened";
            return (myStatus, stat1);
        }
         else {
            string memory stat1 = "closed";
            return (myStatus, stat1);
        }
    
    }
    
    struct Customer {
        string _fname;
        string _lname;
        string _email;
        address payable _custAddr;
    }
    
    function addCustomer(string memory _fname, string memory _lname, string memory _email, address payable _custAddr) public {
        
       if(myStatus == Status.opened){
       
           customers.push(Customer(_fname, _lname, _email, _custAddr));
           custCnt++;
       
       }

    }
}
