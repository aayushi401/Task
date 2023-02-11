pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract safemath_token is Ownable {
    using SafeMath for uint256;

    string public name;
    string public symbol;
    uint public decimals;
    uint public totalSupply;

    mapping(address => uint) public balances;

    constructor(string memory _name,string memory _symbol,uint _decimals,uint _totalSupply) public{
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _totalSupply;
        balances[msg.sender] = totalSupply;
    }

    function transfer(address _to,uint _amount) public onlyOwner{
        require(balances[msg.sender] >= _amount,"Please check your balance");
        balances[_to] = balances[_to].add(_amount);
        balances[msg.sender] = balances[msg.sender].sub(_amount);
        //return true;
    }

    function check_balance(address _add) public onlyOwner returns(uint){
        return balances[_add];
    }

    function mint(address _to, uint _value) public onlyOwner {
        totalSupply = totalSupply.add(_value);
        //totalSupply += _value;

        balances[_to] = balances[_to].add(_value);
        //balances[_to] += _value;
    }

    // function mint(address _to, uint _value) public onlyOwner {
    //     totalSupply += _value;
    //     balances[_to] += _value;
    // }
}
