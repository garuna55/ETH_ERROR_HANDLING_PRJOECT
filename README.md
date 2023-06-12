# miniBANK using Solidity

The MiniBank project is just a simulation of working of banking functionalities like deposit , withdraw , check balance and transfer money from one ethereum adress to another.It is made using solidity and consist of one mapping and three functions and have conecepts of error handling (using require(), assert() and revert() statements).

## Description
This project aims to develop a decentralized banking system using Solidity, which is a programming language for developing smart contracts on the Ethereum blockchain. The project will create a simplified version of a banking system, deposit and withdraw funds, and check balance in basic financial transactions transparently
##Account Creation: 
* Users can create an account by providing their personal information, such as name, address, and identification details. Each account will be associated with a unique Ethereum address.

* Deposits and Withdrawals: Account holders can deposit funds into their accounts, increasing their balance. They can also withdraw funds, decreasing their balance. The system ensures sufficient funds for withdrawals and prevents overdrafts.

Smart Contract Implementation: Solidity is used to develop smart contracts that define the logic and rules of the MiniBank system. These smart contracts are deployed on the Ethereum blockchain, ensuring transparency and immutability.

## Getting Started

### Executing program

The project will involve the following steps:

Setting up Remix:

1. Open the Remix IDE in your web browser.
* To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

2. Creating the Token Contract:

* Start a new file in the code editor within Remix. Copy and paste the following code into the file:




'''
 
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



3. Compiling the Contract:

* Use the Remix compiler panel to compile your token contract.
* Select the appropriate compiler version i.e >=0.8.5.

4. Deploying the Contract:

* Switch to the "Deploy & run transactions" tab in Remix.
* Deploy the compiled contract by clicking the "Deploy" button.

5. Interacting with the Token:

* Utilize the Remix IDE to interact with the deployed token contract.
* Use the deposit , withdraw , Balance, transfer functions for depositing , withdrawing , checking balance and transfer .  
* Input the adress and value and click on the corresponding function buttons to execute your contract.


## Authors

Anurag Rawat
 
 @https://www.linkedin.com/in/rawatanurag/
## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
