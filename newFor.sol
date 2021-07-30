pragma solidity 0.5.1;


contract newLoopContract {
    
   uint256 public theArea; 
   uint256 public rArea;
   
    function searchfor(uint256 myVal) public pure returns (uint256 cVal) {
        assembly {
            switch myVal
            case   0 { cVal :=  0 }
            case   1 { cVal :=  1 }
            case   2 { cVal :=  2 }
            case   3 { cVal :=  3 }
            case   4 { cVal :=  4 }
            case   5 { cVal :=  5 }
            case   6 { cVal :=  6 }
            case   7 { cVal :=  7 }
            case   8 { cVal :=  8 }
        
        default  { cVal := 118 }
       }
    }
    
    function arith(uint a) public pure returns (uint b) {
        b = 1;
        for (uint i = 0; i < a; i++)
            b = 2 * b + 100;
    }
    
    
    function myArea(uint w, uint h) public  returns (uint myarea) {
        
        uint j = 5;
        theArea = 0;
        
        do {
            myarea = w * h;
            rArea = myarea;
           
            theArea = theArea + j;
            
            j--;
    
        } while (j > 0) ;
        
    }
    
   
    
    
   
    
}