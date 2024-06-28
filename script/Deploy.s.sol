// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.21 <0.9.0;

import { BaseScript } from "./Base.s.sol";

import { EtheReal } from "../src/EtheReal.sol";
import { HouseAsset } from "../src/HouseAsset.sol";

/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
contract Deploy is BaseScript {
    function run() public broadcast returns (EtheReal etheReal, HouseAsset nft) {
        nft = new HouseAsset();
        etheReal = new EtheReal(address(nft));

        return (etheReal, nft);
    }
}
