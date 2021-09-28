// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.7;

import "../interfaces/ICarFactory.sol";

/// @author Tabish <bonjour.tabish@gmail.com>
contract CarShop {
    mapping(address => uint256) public inventory; // car inventory
    address public FACTORY; // car factory address
    address private OWNER; // address of OWNER of CarShop

    event sales(address indexed car, uint256 sale); // Event for logging sales of a car

    constructor(address _factory) {
        FACTORY = _factory;
        OWNER = msg.sender;
    }

    /// @dev adds a new car
    function addCar(uint256 _price) external returns (address) {
        require(
            msg.sender == OWNER,
            "Only Owner Allowed to call this function"
        );
        address car = ICarFactory(FACTORY).deployCar(_price);
        inventory[car] = _price;
        return car;
    }

    /// @dev record sales
    function recordSales(address _car, uint256 _sales) external {
        require(
            msg.sender == OWNER,
            "Only Owner Allowed to call this function"
        );
        require(inventory[_car] > 0, "Car should exist in the inventory");
        emit sales(_car, _sales);
    }
}
