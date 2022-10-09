// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.4.16;

interface tokenRecipient {
    function receiveApproval (address _from, uint256 _value, address _token, bytes _extraData) external;
}

contract TokenERC20 {
    string public name;
    string public symbol;
    uint8 public decimals = 18;
    uint256 public totalSupply;
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256) public allowance;
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(addressed indexed _owner, address indexed _spender, uint256 _value);
    event Burn (address indexed from, uint256 value);
}