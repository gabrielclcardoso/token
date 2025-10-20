// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.4.0
pragma solidity ^0.8.27;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract RioAgradecimento is ERC20, ERC20Permit, AccessControl {
    constructor(address defaultAdmin)
        ERC20("42RioAgradecimento", "GRATRIO")
        ERC20Permit("42RioAgradecimento")
    {
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
    }
}