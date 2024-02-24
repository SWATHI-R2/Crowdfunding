// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

struct Donation {
  uint id ;
  string patientName;
  string title;
  string medicalCondition;
  string hospitalName;
  string description;
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
    address[] public  people ;
    mapping(address => Donation[])  public  donations ;
    function myCampaigns( ) public view returns ( Donation[] memory) {
        return donations[msg.sender];
    }
    function allCampaigns () public  view returns (Donation[] memory) {
         uint totalDonations = 0;
        // Calculate the total number of donations to initialize the array
        for (uint i = 0; i < people.length; i++) {
            totalDonations += donations[people[i]].length;
        }

        Donation[] memory arr = new Donation[](totalDonations);
        uint index = 0;

        for (uint i = 0; i < people.length; i++) {
            for (uint j = 0; j < donations[people[i]].length; j++) {
                arr[index] = donations[people[i]][j];
                index++;
            }
        }
        return  arr; 
    }

    function getDonation(address fundraiser,uint id)public view returns(Donation memory) {
        return donations[fundraiser][id];
    }

    function personIn(address person) public view  returns (bool) {
        for (uint i = 0; i < people.length; i++) {
            if (people[i] == person) {
                return true;
            }
        }
        return false;
    }
  function createDonation(uint amount,string calldata patientName, string calldata title ,string calldata medicalCondition,string calldata hospitalName ,string calldata description ) public returns (Donation memory) {
    // Transaction[] storage transations = new Transaction[](0);
    Donation memory d ;
    d.id = donations[msg.sender].length;
    d.amount = amount;
    d.patientName = patientName;
    d.title = title;
    d.medicalCondition = medicalCondition;
    d.hospitalName =hospitalName;
    d.description = description;
    d.fundraiser = msg.sender;
    d.withdraw = false;
    d.fund = 0;
    donations[msg.sender].push(d); 
    if(!personIn(msg.sender)) {
        people.push(msg.sender);
    }
    return (d) ;
  }
  receive() external payable { }

  function donate( address payable  addr, uint id ) external payable  {
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