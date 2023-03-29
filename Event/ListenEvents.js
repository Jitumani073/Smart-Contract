// This javascript code can be used to read events from the smart contract 
// We are using web3.js library

import Web3 from "web3";
const web3 = new Web3(web3Provider); 

const Abi = [
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "string",
				"name": "name",
				"type": "string"
			},
			{
				"indexed": false,
				"internalType": "uint256",
				"name": "favnum",
				"type": "uint256"
			}
		],
		"name": "eventOne",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "account",
				"type": "address"
			}
		],
		"name": "eventThree",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "bool",
				"name": "check",
				"type": "bool"
			}
		],
		"name": "eventTwo",
		"type": "event"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_name",
				"type": "string"
			},
			{
				"internalType": "uint256",
				"name": "_favNum",
				"type": "uint256"
			}
		],
		"name": "triggerEventOne",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_account",
				"type": "address"
			}
		],
		"name": "triggerEventThree",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_num1",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "_num2",
				"type": "uint256"
			}
		],
		"name": "triggerEventTwo",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
];

const contractAddress = "0xd9145CCE52D386f254917e481eB44e9943F39138";

let eventTest = new web3.eth.Contract(Abi, contractAddress);

eventTest.events.eventOne(function(err, data){
    if(!err)
    console.log(data);
});

eventTest.events.eventTwo(function(err, data){
    if(!err)
    console.log(data);
});

eventTest.events.eventThree(function(err, data){
    if(!err)
    console.log(data);
});
