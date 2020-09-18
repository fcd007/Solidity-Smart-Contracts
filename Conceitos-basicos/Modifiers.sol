// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.4.24;

contract owner {
    
    constructor() public { owner = msg.sender; }
    address owner;
    
    modifier onlyOwner{ //modifier
        require(msg.sender == owner);
       _;
   }
}

contract mortal is owner {
    function closed() public onlyOwner {
        selfdestruct(owner);
    }
}