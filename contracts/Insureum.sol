pragma solidity ^0.4.17;

contract Insureum {
    address public seller;
    address public buyer;
    address public arbiter;


    function Purchase(address _seller, address _arbiter) public {
        buyer = msg.sender;
        seller = _seller;
        arbiter = _arbiter;
    }

    function payPremium() public payable {

    }

    /// Confirm that you (the buyer) received the item.
    /// This will release the locked ether.
    function payoutToHospital() public {
        msg.sender.transfer(this.balance);
    }

    function getBalance() public constant returns (uint) {
        return this.balance;
    }

    function getBalanceOfUser(address) public constant returns (uint) {
        return this.balance;
    }
}