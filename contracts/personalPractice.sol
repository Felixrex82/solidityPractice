// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract viewAndPure {
    // understanding view and pure

    string public name = "Felix";
    uint public age = 24;

    function viewFunc() external view returns(string memory) {
        return name;
    }

    // view function reads data from the contract (i.e the state variable)

    function pureFunc() external pure returns(uint) {
        return 4;

        // while a pure function does noot have the capacity to read from a state variable, else, the contract will not deploy, hence, we have to parse in something entirelly different
    }




    //Question:

    // 1. Can view function also modify a state variable or only read it

    // 2. i noticed the example above on view function was not working when i return a string, why?
    // it worked now, but it was because i added "memory", why do I have to add it when I did not add it to the uint
}


contract incrementAndDecrement{
    int public countThis;

    function increment() external {
        countThis += 1;

        // this is the logic behind it, everytime the function is called, the variable will be incremented

        // countThis += 1 means countThis = the value(0) + 1
    }

    // same logic goes for decrementing

    function decrement() external {
        countThis -= 1;
    }

    // That means i can call the variable "countThis" anytime because it is a state variable
}

contract ifAndElseStatement {
    uint public myAge = 25;
    
    function ifAndElse(uint _x) public view returns (string memory){
        if (_x < myAge) {
            return "You are underaged";
        }else if (_x >= myAge) {
            return "You are good";
        }

        return "You are 25 years old";
    }
}