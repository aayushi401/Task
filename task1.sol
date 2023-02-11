// 1. Create a smart contract with a write function allowing any user to enter a number (decimal or integer) and store it. 
// Have a get function that returns the total value and the total number of wallets that have entered the details.

pragma solidity ^0.8.0;

contract storing_number{
    uint public totalvalue;
    uint public totalwallets;
    address public owner;

    function store(uint _no1) public returns(uint){
        totalvalue +=_no1;
        totalwallets++;
    }

    function getvalue() public returns(uint){
        return totalvalue;
    }

    function no_of_wallets() public returns(uint){
        return totalwallets;
    }

    function getowner() public returns(address){
        owner=msg.sender;
        return owner;
    }
}