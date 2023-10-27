//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;


contract Blog {
    address public owner;
    uint public activePostsCounter;
    uint public deletedPostsCounter;
    uint public totalPostsCounter;

    enum Deactivated { YES, NO }

    struct PostStruct {
        uint id;
        address author;
        string title;
        string description;
        uint created;
        uint updated;
        Deactivated deleted;
    }

    mapping(uint => adress) public delPostOf;
    mapping(uint => address) public authorOf;
    mapping(address => uint) public postsOf;
     
    PostStruct InactivePosts[];
    PostStruct ActivePosts[];

    event PostAction(
        uint id,
        string actionType,
        uint timestamp,
        address indexed executor,
    )

    modifier onlyOwner() {
        require(msg.sender = owner, "You are not authorised to make changes");
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