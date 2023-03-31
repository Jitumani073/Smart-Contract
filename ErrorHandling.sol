// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Custom error
error NotOwner();
error WithdrawFailed();

contract ErrorHandling {
    
    // state variable
    address private Owner;
    uint private count;

    // modifier to check only owner is calling the function
    modifier onlyOwner {
        if(msg.sender != Owner) {
            revert NotOwner();       // using revert 
        }
        _;
    }
    
    // Setting the owner at the time of contract deploy 
    constructor() {
        Owner = msg.sender;
    }

    // send ether to the contract
    function sendEther() external payable {
        require(msg.value == 1 ether, "Amount must be 1 ether!");  // using require 
        count++;
    }

    function getBalance() private view returns(uint) {
        return address(this).balance;
    }

    function getCount() private view returns(uint) {
        return count;
    }

    function check() private view {
        uint bal = getBalance()/10**18;
        uint val = getCount();
        assert(bal == val);                   // using assert
    }

    // send all ether of the contract to owner address
    function withdraw() external onlyOwner {
        check();
        bool send = payable(msg.sender).send(address(this).balance);
        if(!send) {
            revert WithdrawFailed();          // using revert
        }
        // we can also use -> require(send, "withdraw failed");
    }
}
