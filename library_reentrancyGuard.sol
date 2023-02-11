pragma solidity ^0.8.0;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract library_reentrancy{
    function add(uint a,uint b) public returns(uint){
        return SafeMath.add(a,b);
    }

    function sub(uint a,uint b) public returns(uint){
        return SafeMath.sub(a,b);
    }

    bool locked;

    function doSomething() public {
        require(!locked, "Reentrancy detected");
        locked = true;

        // code 

        locked = false;
    }
}