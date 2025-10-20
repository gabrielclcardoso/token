# 42RioAgradecimento token

This is a pedagogical project that consists in developping and deploying a token on a blockchain of my choice.

## Token purpose

This token will represent the gratitude of 42 students. It will be a way for students to show their gratitude 
towards each other in a way that is currently not possible with the resources present on the intranet.

## General Parameters
* The token follows the BEP20 standard
* The initial supply is 0
* The token name is 42RioAgradecimento
* The token symbol is GRATRIO
* The smart contract has the Permit feature enabled
* The smart contract has the AccessControl feature enabled
* There is an `ADMIN` and a `MINTER` role
* The `ADMIN` is responsible for delegating the `MINTER` role
* The `MINTER` is the account with the possibility of minting tokens
* There is a mapping on the smart contract to prevent replay attacks