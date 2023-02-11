pragma solidity ^0.8.17;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
//error Unautorized();

contract library_safemath{

    using SafeMath for uint256;

    function add(uint a,uint b) public returns(uint) {
        return SafeMath.add(a,b);
    }   

    function subbbb(uint a, uint b) public returns(uint) {
        return SafeMath.sub(a, b, "invalid number");
    }

    // function sub(uint a,uint b) public returns(uint) {
    //     return SafeMath.sub(a,b);
    // }

    // function sub(uint a,uint b,string memory errorMessage) public returns(uint) {
    //     require(b <= a, errorMessage);
    //     return SafeMath.sub(a,b);
    // }
    // function sub(uint a,uint b) public returns(uint) {
    //     require(b <= a, "errorrr");
    //     return SafeMath.sub(a,b);
    // }

    function mul(uint a,uint b) public returns(uint){
        return SafeMath.mul(a,b);
    }

    function div(uint a,uint b) public returns(uint){
        return SafeMath.div(a,b);
    }

    // OR

    function letmedivide(uint a, uint b, string memory err) public returns(uint) {
        return SafeMath.div(a, b, err);
    }

    function mod(uint a,uint b) public returns(uint){
        return SafeMath.mod(a,b);
    }
}