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
