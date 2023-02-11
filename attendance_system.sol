pragma solidity ^0.8.0;

//import "@openzeppelin/contracts/access/Ownable.sol";

contract Attendance_system{

    struct Student{
        string name;
        uint class;
        uint joiningDate;
    }

    address public teacher;
    uint rollnumber;

    constructor(){
        teacher = msg.sender;
    }

    mapping(uint => Student) public registered; 
    event data(string name,uint class,uint time);

    function attendance(string memory _name,uint _class,uint _joiningDate) public {
        require(_class>0,"invalid class");
        Student memory s = Student(_name,_class,_joiningDate);
        rollnumber++;
        registered[rollnumber] = s;
        emit data(_name,_class,block.timestamp);
    }
}