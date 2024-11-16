// SPDX-License-Identifier: MIT
// Handler is going to narrow down the way we call function

pragma solidity ^0.8.19;

import { Test } from "forge-std/Test.sol";
import { DSCEngine } from "../../src/DSCEngine.sol";
import { DecentralizedStableCoin } from "../../src/DecentralizedStableCoin.sol";
import { ERC20Mock } from "@openzeppelin/contracts/mocks/ERC20Mock.sol";

contract Handler is Test {
    
    DSCEngine dsce;
    DecentralizedStableCoin dsc;

    constructor(DSCEngine _dscEngine, DecentralizedStableCoin _dsc){
        dsce = _dscEngine;
        dsc = _dsc;
    }

    //redeem collateral <-
    function depositCollateral(uint256 collateralSeed, uint256 amountCollateral) public {
       // dsce.depositCollateral(collateral, amountCollateral);
    }

    // Helper Functions
    function _getCollateralFromSeed(uint256 collateralSeed) private view returns(ERC20Mock) {
        
    }
}

