pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract MyContract is Ownable {
    uint value;

    //set value by owner
    function setvalue(uint _newvalue) public onlyOwner{
        value = _newvalue;
    }
    
    //
    function getvalue() public returns(uint){
        return value;
    }

    //it will check owner and then change value otherwise gives error.
    function check_owner(uint _value_checkowner) public{
        _checkOwner();
        value = _value_checkowner;
    }

    //transfer owner by owner's account only
    function transferOwner(address newOwner) public onlyOwner {
        super.transferOwnership(newOwner);
    }

    //-----------------------------------------------

    //return owner's address
    function oowner() public returns(address){
        return owner();
    }

    // function isoowner() public returns(bool){
    //     isOwner();
    // }

    //remove owner
    function renounceOwnership() override public onlyOwner{
        super.renounceOwnership();
    }

    //transfer owner and store data in logs
    function transferOwnership(address newOwner) override public onlyOwner{
        super.transferOwnership(newOwner);
    }
}