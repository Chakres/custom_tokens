// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract CustomToken {
    address public admin;

    string public tokenName = "BLOCKCHAIN";
    string public tokenAbbrv = "BC";
    uint256 public totalTokens = 0;

    mapping(address => uint256) public balances;

    constructor() {
        admin = msg.sender;
        balances[msg.sender] = totalTokens;
    }

    function createTokens(address _address, uint256 _amount) public {
        if (_address == admin) {
            totalTokens += _amount;
            balances[_address] += _amount;
        }
    }

    function destroyTokens(uint256 _amount) public {
        if (balances[msg.sender] >= _amount) {
            totalTokens -= _amount;
            balances[msg.sender] -= _amount;
        }
    }

    function transferTokens(address _toAddress, uint256 _amount) public {
        if (balances[msg.sender] >= _amount) {
            balances[msg.sender] -= _amount;
            balances[_toAddress] += _amount;
        }
    }
}
