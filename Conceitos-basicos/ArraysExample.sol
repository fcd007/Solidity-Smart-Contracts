// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.4.24 <0.8.0;

contract ChangerArrayValue {
    uint[20] public arr;
    
    function startChange() public {
        firstChange(arr);
        secundChane(arr);
    }
    
    function firstChange(uint[20] storage x) internal {
        x[0] = 4;
    }
    
    function secundChane(uint[20] x) internal pure {
        x[0] = 3;
    }
}