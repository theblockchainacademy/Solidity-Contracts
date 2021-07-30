pragma solidity ^0.5.0;

contract StudentList {
  uint public studentCount = 0;

  struct Student {
    uint id;
    string content;
    bool present;
  }

  mapping(uint => Student) public students;

  event StudentCreated(
    uint id,
    string content,
    bool present
  );

  event StudentPresent(
    uint id,
    bool present
  );

  constructor() public {
    createStudent("Tim Baker");
	createStudent("Rob Sims");
	createStudent("Johnny Kays");
	createStudent("Elliot Crass");
	createStudent("Laura Ubanks");
	createStudent("Pete Donak");
	createStudent("Tom Flynn");
  }

  function createStudent(string memory _content) public {
    studentCount ++;
    students[studentCount] = Student(studentCount, _content, false);
    emit StudentCreated(studentCount, _content, false);
  }

  function togglePresent(uint _id) public {
    Student memory _task = students[_id];
    _task.present = !_task.present;
    students[_id] = _task;
    emit StudentPresent(_id, _task.present);
  }

}
