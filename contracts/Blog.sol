//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;


contract Blog {
    address public owner;
    uint public activePostsCounter;
    uint public deletedPostsCounter;
    uint public totalPostsCounter;
    
    enum Deactivated { NO,YES };

    struct PostStruct {
        uint id;
        address author;
        string title;
        string description;
        uint created;
        uint updated;
        Deactivated deleted;
    }

    mapping(uint => address) public delPostOf;
    mapping(uint => address) public authorOf;
    mapping(uint => address) public postsOf;

    event PostAction {
        uint id,
        address executor,
        uint timestamp,
        Deactivated deleted,
        string actionType,
    }

    modifier ownerOnly() {
        require(msg.sender == owner, "You are not auth)
    }

    constructor() {
        owner = msg.sender;
    }
    
    

}




// mapping(address => uint) public balances 
// balances[msg.sender] = 123;  --- (set data)
// uint bal = balances [msg. sender];  --- (get data)
// uint bal2 = balances [address (1)]; // 0
// balances[msg.sender] += 456  --- (update data)
// delete balances[msg.sender];  --- (delete data)