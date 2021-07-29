pragma solidity ^0.5.1;

contract Loop {

    
    struct Student {
        uint grade;
        string name;
    }

    mapping(address => Student) public studentStructs;
    address [] public studentArray;
    int256 public nmCnt=0;
    string [] public studentNameArray;
    
    

    event LogStudentGrade(address student, uint studentGrade, string studentName);

    function appendStudentGrade(address student, uint studentGrade, string memory sname) public {
        studentArray.push(student);
        studentStructs[student].grade = studentGrade;
        studentStructs[student].name = sname;
    }

    function getStudentCnt() public view returns(uint count) {
        return studentArray.length;
    }

    function studentLoop() public {
        
        for (uint i=0; i<studentArray.length; i++) {
            emit LogStudentGrade(studentArray[i], studentStructs[studentArray[i]].grade, studentStructs[studentArray[i]].name);
        }
        
        
    }
    
    function studentName() public  {
       uint256 j;
       string memory nm;
       
       while (j < studentArray.length){
            
            nm = studentStructs[studentArray[j]].name;
            studentNameArray.push(nm);
            j++;
            nmCnt++;
        }
    
   }
    
   
}