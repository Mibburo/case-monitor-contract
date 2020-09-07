# case-monitor-contract
Ethereum smart contract

Testnet Deployment  
Create a new infura node project, select ropsten testnet and copy the project id to the infuraKey variable inside truffle-config.js

Navigate to root folder and create a file named .secret and paste the menmonic seed from your wallet.
Then to deploy, in the root folder path execute:  
npm init  
npm install fs  
npm install @truffle/hdwallet-provider  
truffle migrate --network ropsten  
