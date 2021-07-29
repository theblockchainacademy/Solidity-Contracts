pragma solidity <=0.5.2;


contract CallFunContract{
    
    string public svalue;
    string public mysVal;
    uint256 public myIntVal;
    
    
    function set(string memory _value, string memory _MyVal1, uint256 _baseint) public  {
        
        svalue = _value;
        mysVal = _MyVal1;
        myIntVal = setInt(_baseint);
       
    }
    
    function setInt(uint256 _int) internal pure returns (uint256 _rint){
        _rint = _int;
        return _rint;        
    }
    
}
