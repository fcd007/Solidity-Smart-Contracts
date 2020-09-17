// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.24 <0.8.0;

contract Math {
    function add(uint256 a, uint256 b) internal pure returns (uint) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }
    
    function multiply(uint256 a, uint256 b) internal pure returns(uint) {
        if(a == 0) {
            return 0;
        }
        
        uint256 c = a * b;
        assert(c / a == b);
        return c;
    }
}