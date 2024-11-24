// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

/**
 * @title OracleLib
 * @author Nestor Mat
 * @notice This library is used to check the Chainlink Oracle for stale data.
 * If a price is stale, the function will revert, and render the DSCEngine unusable
 * We want the DSCEngine to freeze if prices be became stale.
 *
 * So if the Chainling network explodes and you have a lot money locked in the protocol.. too bad.
 *
 */
library OracleLib {
    function statePriceCheck(
        AggregatorV3Interface priceFeed
    ) public view returns (uint256, int256, uint256, uint256, uint80) {}
}
