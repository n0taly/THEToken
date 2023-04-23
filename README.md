This Solidity program is a simple "Create a Token", a token is a digital asset that can be used on a blockchain network without the need for intermediaries or centralized authorities. A contract is a set of rules that define how the token works, and a mapping structure is a method of storing information about token balances and ownership. These tools, when used together, provide a transparent and secure method of exchanging value on a blockchain network, potentially opening up new avenues for innovation and growth.

## Description

This program is a contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a double function that mint and burn the Tokens. The goal of token burning and minting is to manage a token's supply in a way that supports its intended use case and benefits its holders and users.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Token.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract THEToken {

    // public variables here
        string public THTname = "TopSecret";
        string public THTabbrv = "TS";
        uint public THTtotalsupply = 0;

    // mapping variable here
        mapping(address => uint) public Remainder;

    // mint function
        function mint(address add, uint cost) public{
            THTtotalsupply += cost;
             Remainder[add] += cost;
        }
    // burn function
        function burn(address add, uint cost) public{
            if(Remainder[add] >= cost){
                THTtotalsupply -= cost;
                 Remainder[add] -= cost;
            }
        }  

}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile Token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "THEToken" contract from the dropdown menu, and then click on the "Deploy" button.

After the contract has been deployed, you can interact with it by entering the account address into the mint function and entering the cost underneath. Click on the Remainder to add the account address. Then, to execute the function, click the "transact" button, which increases the total supply by that number and increases the balance of the "account" address by that amount. There will also be a burn function, which works in the opposite direction of the mint function by destroying tokens. It will accept an address and a value in the same way that the mint does. It will then deduct the value from the total supply as well as the "account" balance.

## Authors

Alynna Nicole R. Coronado
[https://discord.com/channels/966939358861078588]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
