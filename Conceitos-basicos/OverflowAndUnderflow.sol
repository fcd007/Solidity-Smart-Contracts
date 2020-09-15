// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.24 <0.8.0;

contract OverflowAndUnderflow {
    
    function overflow() public pure returns(uint256){
        uint256 max = 2**256 - 1;
        return max + 1;
    }
    
    function underflow() public pure returns(uint256){
        uint256 min = 0;
        return min -1;
    }
}