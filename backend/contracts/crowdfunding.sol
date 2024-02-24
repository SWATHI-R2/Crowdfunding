// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

struct Donation {
  string decription ;
  uint amount ;
  uint fund ;
  address fundraiser ;
  bool withdraw ;
}

struct Transaction {
  address donater;
  uint amount;
}


contract CroudFunding {
  mapping(address =>  Donation[]) public donations ;

  function createDonation(uint amount,string calldata description ) public returns (address ,uint) {
    // Transaction[] storage transations = new Transaction[](0);
    donations[msg.sender].push(Donation(description,amount,0,msg.sender,false)); 
    return (msg.sender, donations[msg.sender].length -1) ;
  }
  receive() external payable { }

  function donatate( address payable  addr, uint id ) external payable  {
    require(msg.value + donations[addr][id].fund <= donations[addr][id].amount,"Please send only required amount")  ;
    if (msg.value + donations[addr][id].fund == donations[addr][id].amount){
      donations[addr][id].fund = donations[addr][id].amount ;
      (bool result,) = addr.call{value : donations[addr][id].amount}("") ;
      if(result) {
        donations[addr][id].withdraw = true; 
      }
    }
    else {
      donations[addr][id].fund += msg.value ;
    }
  }

}