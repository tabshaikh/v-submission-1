// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.8.0;

/// @author Tabish <bonjour.tabish@gmail.com>
interface ICarShop {
    function addCar(uint256 _price) external returns (address);

    function recordSales(address _car, uint256 _sales) external;
}
