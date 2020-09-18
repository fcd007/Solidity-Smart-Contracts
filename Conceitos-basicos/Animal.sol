// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.4.24;

contract Animal {
    string public breed;
    uint public age;
    uint public weigth;
    
    constructor() public {
        age = 3;
        weigth = 1;
    }
    
    function sleep() pure public returns (string) { return "Zzzzzz...";}
    function eat() pure public returns(string) { return "Non Non";}
    function talk() pure public returns(string);
}

contract Dog is Animal {
    constructor() public {
        breed = "Labrador";
        age = 5;
        weigth = 3;
    }
    
    function talk() pure public returns(string) { return "bark bark";}
}

contract Cat is Animal {
    constructor() public {
        breed = "Persian";
        age = 5;
        weigth = 3;
    }
    
    function talk() pure public returns(string) { return "Miaow";}
}