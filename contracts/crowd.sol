// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

contract crowd {
    uint256 public total=0;
    address public poor;
    address public owner;
    constructor(){
        owner=msg.sender;
    }

    function donate() payable public{
        total=total+msg.value;
    }
    function register () public{
        poor=msg.sender;
    }

    function distribute () public{
        require(msg.sender==owner);
        payable(poor).transfer(total);
        total=0;
    }
}

