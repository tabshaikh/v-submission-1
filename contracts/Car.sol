// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.7;

/// @author Tabish <bonjour.tabish@gmail.com>
contract Car {
    uint256 public price;

    constructor(uint256 _price) {
        require(_price > 0, "Price of Car cannot be 0");
        price = _price;
    }
}
