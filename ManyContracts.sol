pragma solidity >=0.5.1;


contract holdData {
    uint public data = 500;
    //hd.myBaseData(20);
    
    function setMyData (uint256 _i) public pure returns (uint256 _prd) {
        //Doubles the past in data
        _prd = _i * 2;
    }
    
    function myBaseData(int256 _m) internal pure returns (int256 _r){
        
        _r = _m + 10;
    }
}

// *** Step 1: remove the comments indicators /* */ around Contract basicData. Contract userBase, below,  inherits the data and functions

contract basicData {
    
    uint256 public keyData = 100;
    uint256 public newValue;
    
    function setVal(uint256 _iVal) public {
        newValue = _iVal;
    }
}

// continue
//*** Step 2: remove the comments to allow Contract userBase to inherit basicData
contract userBase  is   basicData {     
    
    // *** Step 3: Only remove the comment slashes in front of //holdData hd = new holdData();
    
    holdData hd = new holdData();   // leave these comments: Declare Contract holdData in this Contract userBase with new 
    uint256 public theData;
    
    function lookAtData() public view returns (uint256 _k) {
        
         //*** step 4: Remove the comment slashes in from of return
        return hd.data();             //leave these comments: This contract, contract userBase can return 
    }
    
    function getMyData(uint256 _iData, uint256 _imyData) public  returns (uint256 _dataval, uint256 _key){
        
        //*** Step 5: remove the comments slashes from the lines starting with _dataval, setVal(_imyData); return (theData, keyData);
        
          _dataval = hd.setMyData(_iData);
         setVal(_imyData);   //leave these comments: inherired from function basicData, see above
        theData = _dataval;   
        return (theData, keyData);  //leave these comments: pulicvariable keyData is inherited from function basicData, see above
        
    }
}