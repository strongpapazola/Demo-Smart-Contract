// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    mapping(address => mapping(string => string)) public storedData;

    function set(string memory key, string memory value) public {
        storedData[msg.sender][key] = value;
    }

    function get(string memory key) public view returns (string memory) {
        return storedData[msg.sender][key];
    }
}
