// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    mapping(address => mapping(uint => string)) public storedData;

    function set(uint key, string memory x) public {
        storedData[msg.sender][key] = x;
    }

    function get(uint key) public view returns (string memory) {
        return storedData[msg.sender][key];
    }
}
