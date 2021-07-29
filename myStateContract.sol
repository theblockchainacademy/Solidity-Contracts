pragma solidity 0.5.1;

contract myStateContract {
    enum UserOptions {listen, connect, cancel}
    UserOptions public myOption;
    
    constructor() public {
        myOption = UserOptions.connect;
    }
    
    function connect() public {
        myOption = UserOptions.connect;
    }
    
    function testCancel() public view returns(bool){
        return myOption == UserOptions.cancel;
    }
    
    function getMyEnum() public view returns (UserOptions _opts){
        
        return myOption;
    }
    
}