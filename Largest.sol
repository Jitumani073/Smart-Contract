// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Largest {

    address private owner;

    constructor() {
        owner = msg.sender; // contract deployer will be owner
    }

    modifier onlyOwner {
        require (msg.sender == owner, "Only owner can access");
        _;
    }

    // Only owner can call this function
    function checkLargest(uint _a, uint _b, uint _c, uint _d) external view onlyOwner returns(uint) {
        if(_a>_b && _a>_c && _a>_d) {
            return _a;
        } else if(_b>_a && _b>_c && _b>_d) {
            return _b;
        } else if(_c>_a && _c>_b && _c>_d) {
            return _c;
        } else {
            return _d;
        }
    }
}
