// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    // Token metadata
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    
    // Owner address
    address public owner;
    
    // Balances mapping
    mapping(address => uint256) public balanceOf;
    
    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);
    
    // Modifier to restrict functions to owner only
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    
    // Constructor
    constructor() {
        name = "SimpleToken";
        symbol = "STK";
        decimals = 18;
        totalSupply = 0;
        owner = msg.sender;
    }
    
    // Mint new tokens (only owner)
    function mint(address _to, uint256 _amount) public onlyOwner {
        balanceOf[_to] += _amount;
        totalSupply += _amount;
        emit Mint(_to, _amount);
        emit Transfer(address(0), _to, _amount);
    }
    
    // Transfer tokens
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        require(_to != address(0), "Invalid recipient address");
        
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
    
    // Transfer ownership (only owner)
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid owner address");
        owner = newOwner;
    }
}

