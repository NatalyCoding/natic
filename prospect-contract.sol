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
        allTokens = 1000000000000000000 * 1000;  //1eth = 1000 NATIC
        admin = (msg.sender);
        balances[msg.sender] = allTokens;
    }
    
    function buyTokens() public payable {
        uint tokens = msg.value * 1000;
        balances[msg.sender] = balances[msg.sender] + tokens;
        allTokens = allTokens + tokens;
    }
    
    function totalSupply() public constant returns(uint) {
        return allTokens;
    }
    
}

