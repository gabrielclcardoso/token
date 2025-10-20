# 42RioAgradecimento token

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

## How the ecosystem will work
1. The `ADMIN` grants the `MINTER` role to a wallet of his choice.
1. The `MINTER` is able to generate transactions setting the project ID, the receiver address
and the sender address.
1. Transactions are checked to see if the (sender, project) entry is already flagged on the 
smart contract mapping for replay attack prevention and if the sender and receiver 
addresses are diferent.
1. If the entry is already flagged or if the sender and receiver are the same, the transaction
will fail.
1. Otherwise, a new token is minted, sent to the receiver address and the entry is flagged
on the mapping.
1. The generated token can be freely transacted between the students of the school.
1. With the Permit feature enabled future applications can be developped by the students
on top of the token.

## Possible application
The 42 campus who wishes to implement this token can run a web application on it's on premisse
server, the `MINTER` credentials will be stored on the backend of this application. The `ADMIN`
wallet will be in custody of the campus staff.

The front-end of the application will let the user login with his intra user and his wallet
address. It will then validate the completion of the project and allow the student to
choose the project and the person to whom he wants to give the token.

This information will be sent to the back-end where the `MINTER` will try to execute the
transaction and return the status of execution to the user on the front-end.
