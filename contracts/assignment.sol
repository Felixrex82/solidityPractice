// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract solidityAssignment{
    // 1. Explain Visibilty modifier;

    /* visibility modifier could be explain as the attributes added to a solidity contract to define how a contract functions in terms of how visible it is.
     
        As the word modifier implies, this shows that the way a contract is being seen could be modified or manipulated to limit the user's power to access and define the contract.

        There are 4 visibility modifiers;

        1. Public: by making a contract or a function public, we give total power to the user to be able to see and execute the contract or function at any given time, that means it is open to the public.

        2. External: This also works just like public, however, it cannot be accesssed by the same contract (only accessible to be called by an external contract)

        3. Private: The private modifier makes a function or contract not accessible by another contract or function, it is unique to itself

        4. Internal: It works exactly like the private, in that it is not public, however, it could still be called or accessed by an inherited contract or function

    */



    // 2. Declare all existing data types in solidity with their appropriate visibilty modifiers.

    
        string public myName = "Awodele";
        bool public humanBeing = true;
        int public myAge = 25;
        uint public myNum = 256;
        uint public state = 65;
        
        function myFunc() external  view  returns (uint) {
            uint addNum = myNum + 2;

            return addNum;
        }
    

    // 3. Create Update functions

        struct mySelf {
            string myName;
            uint  age;
            address myAddress;
        }

        mySelf public myself;


        function updateInfo(uint newage, address newAddress) public {
            myself.age = newage;
            myself.myAddress = newAddress;
        }

    // 4. List 5 global variables in solidity

        /*
            1. msg.sender ( address of thhe sender)

            2. block.timestamp ( current timestamp)

            3. block.number ( current block number)

            4. tx.gasprice ( gas price of the current transaction)

            5. msg.value ( value sent with the transaction)
        
        */
}