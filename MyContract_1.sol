pragma solidity >=0.5.1;

contract MyContract1 {    
    
    
    string value;
    string myVal;

    function set(string memory _value, string memory _MyVal1) public {
        value = _value;
        myVal = _MyVal1;
    }
    
    function get() public view returns(string memory, string memory) {
        return (value, myVal);
    } 

}