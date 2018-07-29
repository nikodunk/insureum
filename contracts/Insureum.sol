pragma solidity ^0.4.17;

contract Insureum {

    mapping (address => uint) private balances;

    address public hospital;

    function Insureum(address _seller, address _arbiter) public {
        hospital = msg.sender;
    }

    function planOneTwoThree() public payable {
      
    }

    function payoutToHospital(uint amount) public {
        // hospital require
        msg.sender.transfer(amount);
    }

    function getBalance() public constant returns (uint) {
        return this.balance;
    }

    function getBalanceOfUser(address) public constant returns (uint) {
        return this.balance;
    }
}