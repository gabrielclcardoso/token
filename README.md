# 42RioAgradecimento token

## Introduction

This is a pedagogical project that consists in developping and deploying a token on a blockchain of my choice.

It's better for you to read the `how_it_works.md` file on the documentation folder before as that file explains
the main logic behind the token and this one justifies the choices made during project development.

## Choices made

### Blockchain Choice

For this project, the blockchain chosen to deploy the token was Binance Smart Chain (BSC). BSC was chosen
because of it's compatibility with the Ethereum ecosystem and use of the solidity programming language,
with the advantage of faster transaction times and lower gas fees compared to Ethereum.

Given the project will need to store a mapping on chain, the ethereum mainnet gas fees would become to high
for the project to be functional.

### Developer Tools Choices

#### IDE

The IDE chosen was Remix. It was chosen for it's simplicity and ease of use aswell as it's simple integration
with github. It seemed like the perfect candidate for an introductory blockchain project.

#### Wallet

The wallet chosen to interact with the project was MetaMask. I was already familiar with the wallet and because
of it's wide adoption it would be easier to integrate with other apps if necessary.

### Development Choices

#### Libraries
For this project it was chosen to use OpenZeppelin's contract libraries. OpenZeppelin is a well established
project on the web3 space and it's contract libraries are used in a wide range of projects on chain. Given it
is a battle tested library that gives you a template for easily developping ERC20 compliant tokens it was an
easy choice.

#### OpenZeppelin's AccessControl Feature
The AccessControl feature of OpenZeppelin lets you Restrict who can access the functions of a contract or
when they can do it, this is done via roles.

On the project there are 2 main roles defined that the AccessControl feature helps implement. The `MINTER` role
and an admin which is created as the `DEFAULT_ADMIN_ROLE`. With these two roles defined we can make it so only
the address with the `MINTER` role can mint new coins and only the address with the `DEFAULT_ADMIN_ROLE` can
grant and revoke the `MINTER` role.

#### OpenZeppelin's Permit Feature
The permit feature makes it so token holders are able to allow third parties to transfer from their account
without paying gas.

This makes it easier for the token to interact with 3rd party applications and be integrated with future student
projects in the future eg. DAOs and DEXs.

#### Bonus Multisig
The project has a perfect use case for the multisig bonus part. The `DEFAULT_ADMIN_ROLE` is a perfect candidate
for a multisig wallet. This wallet who will be responsible for asigning the `MINTER` will be ran by 3 accounts
and will require the signature of 2 for it to execute any transaction.

The multisig interface chosen was [https://multisig.bnbchain.org/](https://multisig.bnbchain.org/) which
integrates seamlessly with the BSC ecosystem.