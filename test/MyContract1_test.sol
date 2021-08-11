pragma solidity ^0.5.2;
      import "remix_tests.sol"; // this import is automatically injected by Remix.
      import "MyContract1.sol";

      // file name has to end with '_test.sol'
      contract test_1 {

         int256 public myfullInt = 0;
         string  myValue1;
         string theValue;
         MyContract1 mycontract1;
         string strVal;
         string sTest;
         string sbTest;
         
         
        function beforeAll() public {
            
           mycontract1 = new MyContract1();   
          // here should instantiate tested contract
          //Assert.equal(uint(4), uint(3), "error in before all function");
        }

        function check1() public {
          // use 'Assert' to test the contract
          
          myfullInt = mycontract1.hint(5);
          mycontract1.set("Hello","World");
          
          Assert.equal(myfullInt, 15, "Not the Correct sum");
          Assert.notEqual(myfullInt, 0, "trouble");
          
          strVal = mycontract1.myGet();
          
          Assert.equal(mycontract1.value(), "Hello", "Error: Not Hello");
          Assert.equal(strVal, "World", "Error: not World");
        }

        
        
        function check2() public view returns(string memory, string memory) {
         
          mycontract1.get();
          
        }
        
        function check3() public {
         
          sTest = mycontract1.myGet();
          Assert.equal(sTest,"World","It is not World");
          
        }
        
        
        
        
      }
