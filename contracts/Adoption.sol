// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adoption {
    address[16] public adoptors; // 修改数组大小以匹配返回值

    function adopt(uint petId) public returns (uint) {
        require(petId < 16, "Invalid pet ID"); // 限制 petId 在 0-15 之间

        adoptors[petId] = msg.sender;
        return petId;
    }

    function getAdoptors() public view returns (address[16] memory) {
        return adoptors;
    }
}
