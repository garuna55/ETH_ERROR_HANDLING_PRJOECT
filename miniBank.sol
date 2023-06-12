// SPDX-License-Identifier: MIT
pragma solidity >=0.8.5;

contract miniBank {

    mapping(address=>uint)public balance;
    

    function deposit(address _to,uint _value)public payable returns(uint) {
        require(_value<100000 ,"Please not more than 100000 at a time");//You can only deposit 100000 at a time.
        balance[_to]+= _value;
        return balance[_to];
    }

    function withdraw(address _from, uint _value)public payable {
        require(balance[_from]>=_value, "Insufficient Funds");//You cannot withdraw more than what you have.
       
        balance[_from]-=_value;
    }

    function transfer(address payable _from , address payable _to , uint _value )public payable {
        if (balance[_from]<_value){revert("Earn some money first");}// Your balance should be more than the transfer value 
        balance[_from]-= _value;
        balance[_to] += _value;  
    }





}
