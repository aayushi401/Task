pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract library_enumerable_set{
    using EnumerableSet for EnumerableSet.AddressSet;
    EnumerableSet.AddressSet private mySet;

    //add address to the mySet
    function add(address _address) public{
        mySet.add(_address);
    }

    //remove address from mySet
    function remove_from_set(address _address) public {
        mySet.remove(_address);
    }

    //check total address in mySet
    function check_addressinSet(address _address) public returns(bool){
        return mySet.contains(_address);
    }

    // function enumerate_set() public view returns(address[] memory){
    //     return mySet.enumerate();
    // }
    

    //return length of mySet
    function find_length() public returns(uint){
        return mySet.length();
    }