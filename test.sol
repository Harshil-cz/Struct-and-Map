// // SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Test {

    uint public counter;

    struct Student {
        uint age;
        string name;
        mapping (uint => string) test;
    }

    mapping (uint => Student) public students;

    function setData(uint age_,string memory name_) external returns(bool) {
        students[counter].age = age_;
        students[counter].name = name_;
        students[counter].test[age_] = name_;
        counter += 1;

        return true;
    }

    function getData(uint counter_) external view returns(uint,string memory,string memory) {
        return (students[counter_].age,students[counter_].name,students[counter_].test[students[counter_].age]);
    }

}





