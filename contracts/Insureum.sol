pragma solidity ^0.4.17;

contract Insureum {

   mapping (address => uint) private insurancePlan;

   address public hospital;

   function Insureum() public {
       hospital = msg.sender;
   }

   function planOneTwoThree() public payable returns (uint256) {
       // Here we are making sure that there isn’t an overflow issue
       require((insurancePlan[msg.sender] + msg.value) >= insurancePlan[msg.sender]);

       insurancePlan[msg.sender] += msg.value;

       return insurancePlan[msg.sender];
   }

   function claim(uint withdrawAmount) public payable {
        require(withdrawAmount <= insurancePlan[msg.sender]);
        insurancePlan[msg.sender] -= withdrawAmount;
       require(msg.sender == hospital);
       
       if (insurancePlan[msg.sender] == 1){
           require(withdrawAmount <= 1*10^18);
       } else if(insurancePlan[msg.sender] == 2){
           //require(withdrawAmount <= 2*10^18);
       } else if(insurancePlan[msg.sender] == 3*10^18){
          require(withdrawAmount <= 3);
       }
       
       msg.sender.transfer(withdrawAmount);
   }

   function getBalance() public constant returns (uint256) {
        return address(this).balance;
    }

   //function getBalanceOfUser() public constant returns (uint256) {
     //  return insurancePlan[msg.sender];
   //}
}
