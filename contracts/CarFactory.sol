// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.7;

import "./Car.sol";

/// @author Tabish <bonjour.tabish@gmail.com>
contract CarFactory {
    function deployCar(uint256 _price) external returns (address) {
        return address(new Car(_price));
    }
}
