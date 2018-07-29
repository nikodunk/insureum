pragma solidity ^0.4.17;

contract Insureum {

    // Events - publicize actions to external listeners
    // event LogDepositMade(address accountAddress, uint amount);

    function Purchase(address _seller, address _arbiter) public {

    }

    function planOneTwoThree() public payable {
      
    }

    function payoutToHospital(uint amount) public {
        msg.sender.transfer(amount);
    }

    function getBalance() public constant returns (uint) {
        return this.balance;
    }

    function getBalanceOfUser(address) public constant returns (uint) {
        return this.balance;
    }
}