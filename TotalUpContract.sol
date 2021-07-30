pragma solidity >=0.5.0 <0.7.0; 

contract TotalUpContract {
    
    // This contract totals passed in numbers
    
    /* Declare variable num1
    Declare variable num2 
    Declare sumToal
    intialize all to 0 */
    
    int public num1 = 0; 
    int public num2 = 0; 
    int public sumTotal = 0;
    string public instruct;
    bool public bCond1;
    bool public bEqual;
    
    function setNumString (int _quant1, int _quant2, string memory _str) public {
        num1 = _quant1;
        num2 = _quant2;
        instruct = _str;
        
    }
    
    
    
    function sumIt() public returns(int _sum1, string memory _str1) {
        
        sumTotal = num1 + num2;
        
        bCond1 = true;
        _str1 = instruct;
        
       bEqual = compareStringsbyBytes(_str1, "test");
        
        
        if (bCond1 == true && bEqual == true){
             
            return (sumTotal, instruct);
        }
        
    }
    
    function compareStringsbyBytes(string memory s1, string memory s2) internal pure returns(bool){
        return keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2));
    }
    
}
    
    
    

