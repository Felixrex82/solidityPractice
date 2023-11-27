// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FirstContract{
    string public name = "felix";
    string public firstName = "Awodele";
    uint public age = 24;
    bool public detailsConfirmed = true;

    function changeAge(uint x) external {
        x = x * 2;
        age = x;
    }

    function addNumber(uint x, uint y) external  pure returns (uint) {
        return x + y;
    }

    function newAge() external view returns (uint) {
        uint addAge = age + 2;

        return addAge;
    }

    string[] public arrayTesting = ["felix", "olamide", "Awodele"];

    function pushArray() public {
        arrayTesting.push("Mercy");
    }

    uint[] public newArray = [1, 2, 3];

    function seeArray() public {
        newArray.push(6);
    }

}
