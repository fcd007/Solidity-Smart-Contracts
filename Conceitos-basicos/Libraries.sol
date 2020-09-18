pragma solidity ^0.4.24;

import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol";
contract Bank {
    mapping(address => uint) public accounts;
    using SafeMath for uint256;
    
    funtion deposit() public payable {
        require(accounts[msg.sender] + msg.value >= accounts[msg.sender]."Overflow error");
        accounts[msg.sender] = accounts[msg.sender].add(msg.value);
    }
    
    funtion withdraw(uint money) public {
        require(money <= accounts[msg.sender]);
        accounts[msg.sender] = accounts[msg.sender].sub(money);
    }
}