pragma solidity >=0.5.0 <0.7.0;

contract addEm {
    function myAdd(uint256 numVal, uint256 baseVal) public  pure returns (uint _a) {
        
        _a = numVal * baseVal + 16;
        testP("test Pure");
        
    }
    
    function testP(string memory _mystr) public pure returns (string memory _str){
        
        _str = _mystr;
        
    }
}