// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// import "hardhat/console.sol";

contract Contract {
    uint public x;

    function changeX(uint _x) external payable {
        x = _x;
    }
    
    event Winner(address);

    function attempt() external {
        require(msg.sender != tx.origin, "msg.sender is equal to tx.origin");
        emit Winner(msg.sender);
    }

} 


contract Contractt {
    function call(address _add) external {
        (bool success, ) = _add.call(abi.encodeWithSignature("changeX(uint256)", 24));
        require(success, "Call failed");
    }
}