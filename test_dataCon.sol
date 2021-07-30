pragma solidity <=0.5.2;
      import "remix_tests.sol"; // this import is automatically injected by Remix.
      import "./dataCon.sol";

      // file name has to end with '_test.sol'
      contract test_Hello {

        dataCon datacontotest;
        function beforeAll() public {
            
          datacontotest = new dataCon();
          // here should instantiate tested contract
          //Assert.equal(uint(4), uint(3), "error in before all function");
        }

        function checkSum()  public {
          // use 'Assert' to test the contract
          datacontotest.addIT();
         
        }
        /*
        function check2() public view returns (bool) {
          // use the return value (true or false) to test the contract
          return true;
        }
        */ 
      }

    