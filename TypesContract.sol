pragma solidity ^0.5.0;

// Creating a contract
contract TypesContract {
	
	// Declaring a dynamic array
	uint[] intdata;
	// Declaring as public so we can return it in the Remix contract interface
	string public breakout  = "";
	
	// Declaring the state variable
	// Declaring as public so we can return it in the Remix contract interface
	uint8 public i = 0;

	// Defining the function to
	// demonstrate use of Break statement
	function loop() public returns(uint[] memory){
	while(i < 5) {
		i++;
		if(i==3){
		    breakout = "Breaking now";
			break;
			//continue;
			
		}
		intdata.push(i);
	}
	return intdata;
	}
}