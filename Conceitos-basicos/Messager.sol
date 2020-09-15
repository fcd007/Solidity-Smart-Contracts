// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.24 <0.8.0;

contract Messager {
    address owner;
    string[] messages;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function add(string newMessage) public {
        require(msg.sender == owner);
        messages.push(newMessage);
    }
    
    function count() view public returns(uint) {
        return messages.length;
    }
    
    function getMessages(uint index) view public returns(string) {
        return messages[index];
    }
}