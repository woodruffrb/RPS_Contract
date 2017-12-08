pragma solidity ^0.4.19;

contract BasicTransaction{
    
    event SenderLog(address);
    event RecipientLog(address);
    event ValueLog(uint);
    
    function SendEther(address recipient) public payable {
        SenderLog(msg.sender);
        ValueLog(msg.value);
        RecipientLog(recipient);
        
        recipient.transfer(msg.value);
    }
    
}