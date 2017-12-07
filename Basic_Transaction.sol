pragma solidity ^0.4.14;
contract BasicTransaction{
    mapping (address => uint) public balances;
    
    event Sent(address from, address to, uint amount);
    
    function send(address receiver, uint amount) {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        Sent(msg.sender, receiver, amount);
    }
    
}