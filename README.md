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
  
deployed contract details  
'CaseMonitor'  
   -----------------------  
   > transaction hash:    0xa2a37893ebb862a22af609b8d9feeaf8fecfdf28dd3ce8186337471b3bba39bf  
   > Blocks: 0            Seconds: 12  
   > contract address:    0x3a69e747f6BEC341cDe8F10A996f4E2375b61879  
   > block number:        8639914  
   > block timestamp:     1599500995  
   > account:             0x85E6786fFaa37E3588CEe3fC5B590882986324c0  
   > balance:             0.96351318  
   > gas used:            588726 (0x8fbb6)  
   > gas price:           20 gwei  
   > value sent:          0 ETH  
   > total cost:          0.01177452 ETH  
  
   Pausing for 2 confirmations...  
   ------------------------------  
   > confirmation number: 1 (block: 8639916)  
   > confirmation number: 2 (block: 8639917)  
  
   > Saving migration to chain.  
   > Saving artifacts  
   -------------------------------------  
   > Total cost:          0.01177452 ETH  
