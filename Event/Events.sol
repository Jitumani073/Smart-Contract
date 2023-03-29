// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Events {

    event eventOne(string indexed name, uint favnum);
    event eventTwo(bool indexed check);
    event eventThree(address indexed account);

    function triggerEventOne(string memory _name, uint _favNum) external {
        emit eventOne(_name, _favNum);
    }

    function triggerEventTwo(uint _num1, uint _num2) external {
        bool result;
        if(_num1 > _num2) {
            result = true;
        } else {
            result = false;
        }
        emit eventTwo(result);
    }

    function triggerEventThree(address _account) external {
        emit eventThree(_account);
    }
}
