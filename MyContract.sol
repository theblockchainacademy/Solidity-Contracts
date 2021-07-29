pragma solidity ^0.5.1;
import "remix_tests.sol"; // this import is automatically injected by Remix.

contract MyContract1 {
    string public value;
    string public myVal;
    int256 public myInt;
    string public str1;
 
    
    constructor() public {
        
        set("Good","Day");
        
        value = "myValue";
        myVal = "myString";
    }
    
    function hint (int256 i) public returns (int256 fullInt){
        
        myInt=i;
        fullInt = myInt + 10;
        return fullInt;
          
    }
    
    function get() public  view returns(string memory , string memory) {
        return (value, myVal);
        
    }
    
     function myGet() public returns(string memory) {
        str1 = myVal;
        return str1;
        
    }
    
    function set(string memory _value, string memory _MyVal1) public {
        value = _value;
        myVal = _MyVal1;  
    }
    
}