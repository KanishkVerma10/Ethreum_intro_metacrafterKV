// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    // public variables here
    string public token_Name ="KANISHK";
    string public token_Abbrv="KV";
    uint public total_Supply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint (address _address, uint _value) public {
        total_Supply += _value;
        balances[_address] +=_value;
    }

    // burn function
    function burn (address _address, uint _value) public {
      if (balances[_address] >= _value){
        total_Supply -= _value;
        balances[_address] -=_value;
    }
    }

}
