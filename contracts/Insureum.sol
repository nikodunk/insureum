pragma solidity ^0.4.17;

contract Insureum {

    mapping (address => uint) private insurancePlan;

    address public hospital;

    constructor () public {
        hospital = msg.sender;
    }

    function PayInPremium() public payable returns (uint256) {
        // Here we are making sure that there isn't an overflow issue
        require((insurancePlan[msg.sender] + msg.value) >= insurancePlan[msg.sender]);
        insurancePlan[msg.sender] += msg.value;
        return insurancePlan[msg.sender];
    }

    function claim(uint withdrawAmount) public {
        require(msg.sender == hospital);
        msg.sender.transfer(withdrawAmount);
    }

    function getBalanceOfContract() public constant returns (uint256) {
         return address(this).balance;
     }

    function getBalanceOfUser() public constant returns (uint256) {
        return insurancePlan[msg.sender];
    }
}