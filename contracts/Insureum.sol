pragma solidity ^0.4.17;

contract Insureum {

    mapping (address => uint) private insurancePlan;

    address public hospital;

    function Insureum(address _seller, address _arbiter) public {
        hospital = msg.sender;
    }

    function planOneTwoThree() public payable {
        // Here we are making sure that there isn't an overflow issue
        require((insurancePlan[msg.sender] + msg.value) >= insurancePlan[msg.sender]);

        insurancePlan[msg.sender] += msg.value;

        return insurancePlan[msg.sender];   
    }

    function payoutToHospital(uint withdrawAmount) public {
        
        require(withdrawAmount <= balances[msg.sender]);
        // insurancePlan[msg.sender] -= withdrawAmount;
        require(msg.sender == hospital)
        msg.sender.transfer(withdrawAmount);
    }

    function getBalance() public constant returns (uint) {
        return this.balance;
    }

    function getBalanceOfUser(address) public constant returns (uint) {
        return balances[msg.sender];
    }
}