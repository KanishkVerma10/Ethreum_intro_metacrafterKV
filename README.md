# Ethreum_intro_metacrafterKV
Introducing a fundamental Solidity smart contract with all the required functionality, such as token minting and burning, that mimics a token.




## Description:-
This program is an example of a contract written in the Solidity programming language, which is used to generate smart contracts on the Ethereum network. All of the material covered in the Solidity section of the ETH Beginner Course is combined into one program. Some instances of this are burn functions, address-to-balance mappings, mint functions that need two parameters (a value and an address), and public variables that store information about your coin.


## Getting Started And Code

You can use Remix, an online Solidity IDE, to run this application. Start using the Remix website by going to https://remix.ethereum.org/.

On the Remix website, click the "+" sign in the left sidebar to begin a new file. Save the file with the extension.sol, for instance, ETH!_Project.sol. After copying the code, paste it into the file:



```javascript
##CODE
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

```


##OVERVIEW
The goal of this project is to give users a practical understanding of many of the subjects taught in the ETH_Beginner Course on Solidity. This software provides real-world examples and implementations to enhance learning and demonstrate how crucial Solidity concepts function.

