// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.24 <0.8.0;

contract GetterAndSetters{
    string private message = "Hello world";
    
    function getMessage() public constant returns(string){
        return message;
    }
    
    function setMessage(string newMessage) public {
        message = newMessage;
    }
}