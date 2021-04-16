pragma solidity ^0.4.21;

contract ICO {

    string public name;
    string public symbol;
    uint public decimals;
    uint public bonusEnds;
    uint public icoEnds;
    uint public icoStarts;
    uint public allContributers;
    uint allTokens;
    address admin;
    mapping (address => uint) public balances;

    function ICO () public {
        name = "NataCoin";
        symbol = "NATIC";
        decimals = 18;
        bonusEnds = now + 2 weeks;
        icoEnds = now + 8 weeks;
        icoStarts = now;
        allTokens = 1000;
        admin = (msg.sender);
        balances[msg.sender] = allTokens;
    }
}
