// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Calculator{

    function add(uint _a, uint _b) external pure returns(uint){
        return _a + _b;
    }
    
    function sub(int _a, int _b) external pure returns(int){
        return _a - _b;
    }
    
    function mult(uint _a, uint _b) external pure returns(uint){
        return _a * _b;
    }
    
    function div(uint _a, uint _b) external pure returns(uint){
        return _a / _b;
    }
    
}
