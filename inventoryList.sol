pragma solidity ^0.5.0;

contract inventoryList {
    
  uint public itemCount = 0;

  struct Item {
    uint id;
    string content;
    bool present;
  }


  mapping(uint => Item) public items;
  

  event ItemCreated(
    uint id,
    string content,
    bool present
  );

  event ItemPresent(
    uint id,
    bool present
  );

  constructor() public {
    createItem("laptop Windows10");
	createItem("laptop Windows2019");
	createItem("iPhone XS");
	createItem("iPhone XIS");
	createItem("Google Pixel");
	createItem("MacBook");
	createItem("iPad Pro");
	createItem("Surface");
	createItem("Phone LG");
	createItem("Desktop Windows10");
  }

  function createItem(string memory _content) public {
    itemCount ++;
    items[itemCount] = Item (itemCount, _content, false);
    emit ItemCreated(itemCount, _content, false);
  }

  function togglePresent(uint _id) public {
    Item memory _task = items[_id];
    _task.present = !_task.present;
    items[_id] = _task;
    emit ItemPresent(_id, _task.present);
  }

}

