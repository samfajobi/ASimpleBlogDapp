//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;


contract Blog {
   address public owner;
   uint public activePostCounter;
   uint public deletedPostCounter;
   uint public totalPostCounter;

   struct PostStruct {
      uint id;
      address author;
      string title;
      string description;
      uint createdAt;
      uint updatedAt;
   }
   
   enum DEACTIVATED {NO, YES }

   event PostAction (
      uint id,
      address executor,
      uint timestamp, 
      string actionType  
   );

   modifier onlyOwner() {
      require(owner == msg.sender, "Only the owner is allowed");
      _;
   }

   mapping(uint => address) public authorOf;
   mapping(address => uint) public postsOf;

   PostStruct[] activePosts;
   PostStruct[] inActivePosts;

   constructor() {
      owner == msg.sender;
   }

   function createPost(string memory title, string memory description) public view return(bool) {
     
   }
}









// mapping(address => uint) public balances 
// balances[msg.sender] = 123;  --- (set data)
// uint bal = balances[msg.sender];  --- (get data)
// uint bal2 = balances[address(1)]; // 0
// balances[msg.sender] += 456  --- (update data)
// delete balances[msg.sender];  --- (delete data)