pragma solidity ^0.4.21;



contract insurance {
   
   mapping(address => uint) insurancePlan;
 

   function insurance() public {
   }

   
   function payIntoPlanOne() public payable {
       require(msg.value == 100000000000000000);
        msg.sender.transfer(msg.value);
       insurancePlan[msg.sender] = 1;
   }
   
   
    function payIntoPlanTwo() public payable {
       require(msg.value == 200000000000000000);
        msg.sender.transfer(msg.value);
       insurancePlan[msg.sender] = 2;
   }
   
    function payIntoPlanThree() public payable {
       require(msg.value == 300000000000000000);
       msg.sender.transfer(msg.value);
       insurancePlan[msg.sender] = 2;
   }
   
   function getUser() constant public returns(uint){
       return insurancePlan[msg.sender];
       
   }
   
   function getBalance() constant public returns(uint){
   return msg.sender.balance;
   }

}


// pragma solidity ^0.4.17;

// contract Insureum {
//     address public seller;
//     address public buyer;
//     address public arbiter;


//     function Purchase(address _seller, address _arbiter) public {
//         buyer = msg.sender;
//         seller = _seller;
//         arbiter = _arbiter;
//     }

//     function payPremium() public payable {

//     }

//     /// Confirm that you (the buyer) received the item.
//     /// This will release the locked ether.
//     function payoutToHospital(uint amount) public {
//         msg.sender.transfer(amount);
//     }

//     function getBalance() public constant returns (uint) {
//         return this.balance;
//     }

//     function getBalanceOfUser(address) public constant returns (uint) {
//         return this.balance;
//     }
// }