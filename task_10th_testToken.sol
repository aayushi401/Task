// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract TestToken is ERC20, Ownable {
    using SafeMath for uint256;
    uint ttotalSupply;
    uint maxsupply = SafeMath.mul(100,10 ** decimals());
    address public oowner = msg.sender;

    mapping (address => uint256) public balances;

    constructor() ERC20("Test Token", "TTK") {
        ttotalSupply = 0;
        balances[msg.sender] = ttotalSupply;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);

        ttotalSupply = ttotalSupply.add(amount);
        balances[to] = balances[to].add(amount);
        require(ttotalSupply<=maxsupply,"totalsupply should be lessthan 1000000");
    }
}
