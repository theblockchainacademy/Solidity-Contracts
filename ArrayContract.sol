pragma solidity 0.5.2;

contract ArrayContract {
    
    //array to keep track of several people
    Customer[] public customers;
    int256 public custCnt = 0;
    uint256 public aLength;
    string public zfirstname = "";
    string public zlastname = "";
    string public zemail = "";
    
    function getArrayLen() public returns (uint256)  {
        
        aLength = customers.length;
        return aLength;
    }
    
    struct Customer {

       string _fname;
       string _lname;
       string _email;
    }
    
    function addCustomer(string memory _fname, string memory _lname, string memory _email) public {
        
       customers.push(Customer(_fname, _lname, _email));
       custCnt++;
    }
    
    function removeLastCustomer () public {
        customers.pop();
        custCnt--;
    }
       //return certain array values based on the array place index
    function listVals(uint256 _place) public {
        zfirstname = customers[_place]._fname;
        zlastname = customers[_place]._lname;
        zemail = customers[_place]._email;
    }
    
}
