// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DIOToken is ERC20, Ownable {
    uint8 private constant _DECIMALS = 18;
    uint256 private constant _TOTAL_SUPPLY = 10 * 10**_DECIMALS; // 10 tokens

    constructor() ERC20("DIO Token", "DIO") {
        _mint(msg.sender, _TOTAL_SUPPLY);
    }

    function decimals() public pure override returns (uint8) {
        return _DECIMALS;
    }

    // Optional: Minting/burning controlled by owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public onlyOwner {
        _burn(from, amount);
    }
}
