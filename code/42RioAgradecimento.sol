// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.4.0
pragma solidity ^0.8.27;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract RioAgradecimento is ERC20, ERC20Permit, AccessControl {
    // --- State Variables ---
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    mapping(address => mapping(uint16 => bool)) public gratitudeGiven;

    // --- Constructor  ---
    constructor(address defaultAdmin)
        ERC20("42RioAgradecimento", "GRATRIO")
        ERC20Permit("42RioAgradecimento")
    {
        // Initially grans both roles to the defaultAdmin
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(MINTER_ROLE, defaultAdmin);
    }

    // --- Minting function ---
    function mint(address from, address to, uint16 projectId) public onlyRole(MINTER_ROLE) {
        // Input Validation
        require(to != from, "A student cannot send gratitude to themselves");
        require(to != address(0), "Cannot send gratitude to the zero address");
        require(from != address(0), "Cannot send gratitude from the zero address");

        // Replay attack prevention
        require(!gratitudeGiven[from][projectId], "This student has already given gratitude for this project");

        // Mint one GRATRIO
        gratitudeGiven[from][projectId] = true;
        _mint(to, 1 * 10**18);
    }
}