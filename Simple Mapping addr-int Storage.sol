// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    mapping(address => uint) public storedData;

    function set(uint x) public {
        storedData[msg.sender] = x;
    }

    function get() public view returns (uint) {
        return storedData[msg.sender];
    }
}
