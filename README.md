# Coursera Clone- NFT certificate generator
This Solidity project implements ERC1155 tokens for the certificate generation. It is a demo project not fully implimented.

## Contracts Overview
Contract contains the mapping of address to have the count users. It has 3 functions - mint certificate, check certificate, and reset certificate(this function is for testing purpose only).

## Getting Started
### Prerequisites:
Metamask and wallet<br><br>
### Deployment:
1) open remix IDE.
2) create new folder coursera_clone and upload the .sol file.
3) Compile the contracts and switch to sepolia network in metamask.
4) Select Injected metamask and deploy contract.
5)In front end part replace the abi, and contract address conrrespoding to the deployed contract.<br><br>

### Interaction
1) open the index.html
2) click the download button. connect the metamask and approve the tranasction. As any URI is not specified so NFT in image form is currently unavailable. but it will be stored in mapping of contract.
If there is already an certificate then it will throw and error.
NOTE- for development and testing , reset button is availble to delete the NFT.<br>
Authors<br>
[@Mayank Sharma](https://www.linkedin.com/in/mayank-sharma-078278243/)
