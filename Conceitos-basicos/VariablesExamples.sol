// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.5.99 <0.8.0;

contract VariableExamples {
    bool public switchOn = true;
    address public owner = msg.sender;
    uint public number = 8;
    bytes32 public awesome1 = "Solidity is awesome!";
    string public awesome2 = "Soldity is awesome!";
}