pragma solidity 0.5.1;

contract basicContract{
    
    uint iArt;
    uint myIntVal;
    uint myInput;
    event tstVal(string value1);
    
    //Declare string as public so it will appear in the Remix contract interface
    string public myPubString = "";
    
    
    function setVal(uint _iVal) public {
        
        string memory str;
       
        
        myIntVal = _iVal;
        //call function testVal and return result to str
        str=testVal(myIntVal);
        //emit result to the log
        emit tstVal(str);
        
    }
    
    function testVal(uint _iTst) internal returns (string memory){
        
        uint inum;
        string memory myString;
        
        inum = _iTst;
        if(inum == 0){
            
            myString = "The number is 0";
            myPubString = "The number is 0";
            
        
        }
        else if(inum > 0 && inum < 10){
            myString = "The number is small";
            myPubString = "The number is small";
        }
        else if(inum >= 10 && inum < 100) {
            
            myString = "The number is big";
            myPubString = "The number is big";
            
        }
        else if(inum >= 100 && inum < 1000) {
            
            myString = "The number is way big";
            myPubString = "The number is way big";
            
        }
        else if(inum >= 1000 && inum < 999999) {
            
            myString = "The number is huge";
            myPubString = "The number is huge";
            
        }
        else{
            myString = "The number is way huge and out of sight";
            myPubString = "The number is way huge and out of sight";
        }
        return myString;
        
    }
    
}