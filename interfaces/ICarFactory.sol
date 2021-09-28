// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.8.0;

/// @author Tabish <bonjour.tabish@gmail.com>
interface ICarFactory {
    /// @dev deploys and returns the address of car deployed
    function deployCar(uint256 price) external returns (address);
}
