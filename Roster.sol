pragma solidity ^0.5.0;

contract StudentList {
  uint public studentCount = 0;

  struct Student {
    uint id;
    string name;
    bool present;
  }


  mapping(uint => Student) public students;

  event StudentEntered(
    uint id,
    string name,
    bool present
  );

  event StudentPresent(
    uint id,
    bool present
  );

  constructor() public {
    enterStudent("Jim Baker");
	enterStudent("Mike Smith");
  }

  function enterStudent(string memory _name) public {
    
    students[studentCount] = Student(studentCount, _name, false);
    studentCount ++;
    emit StudentEntered(studentCount, _name, false);
  }

  function togglePresent(uint _id) public {
    Student memory _student = students[_id];
    _student.present = !_student.present;
    students[_id] = _student;
    emit StudentPresent(_id, _student.present);
  }

}
