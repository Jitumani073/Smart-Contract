// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Value_In_Units {

    function sendEther() external payable {}     // send ether to smart contract
    //receive() external payable {}

    function getBalance() public view returns(uint256) {
        return (address(this).balance)/1e18;
    }

    function valueInWei() external view returns(uint256) {
        uint256 value = getBalance();
        return value * 1e18;
    }

    function valueInGwei() external view returns(uint256) {
        uint256 value = getBalance();
        return value * 1 gwei;
    }
}
