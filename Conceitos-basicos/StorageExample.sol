// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.8.0;

contract SimpleStorage {
    uint storageData;
    
    function set(uint x) public {
        storageData = x;
    }
    
    function get() public view returns (uint) {
        return storageData;
    }
}