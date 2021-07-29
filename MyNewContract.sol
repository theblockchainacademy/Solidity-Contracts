pragma solidity >=0.4.22 <0.6.0;


contract MyNewContract{
    string value;
    string myVal;
    int256 myInt;
    int256 fullInt;
    int256 j = 25;
    
    constructor() public {
        value = "myValue";
        myVal = "myString";
    }
    
    function setint (int256 i) private {
        
        myInt=i;
        fullInt = myInt + 10;
        
    }
    
    function set(string memory _value, string memory _MyVal1) public {
        value = _value;
        myVal = _MyVal1;
        setint(j);
    }
    
    function get() public view returns(string memory, string memory, int256 _fullint) {
        return (value, myVal, fullInt);
        
    }
}