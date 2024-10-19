// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import { Script } from "forge-std/Script.sol";
import { DSCEngine } from "../src/DSCEngine.sol";
import { DecentralizedStableCoin } from "../src/DecentralizedStableCoin.sol";
import { HelperConfig } from "./HelperConfig.s.sol";

contract DeployDSC is Script {
    address[] public tokenAddresses;
    address[] public priceFeedAddresses;
    
    function run() external returns(DecentralizedStableCoin, DSCEngine){
        HelperConfig config = new HelperConfig();

        (address wethUsdPriceFeed, address wbtcUsdPriceFeed, address weth, address wbtc, uint256 deployerKey) = config.activeNetworkConfig();

        vm.startBroadcast();
        DecentralizedStableCoin dsc = new DecentralizedStableCoin();
        // DSCEngine engine = new DSCEngine
        vm.stopBroadcast();
    }
}