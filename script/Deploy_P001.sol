// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

// ███████╗███████╗██████╗  ██████╗
// ╚══███╔╝██╔════╝██╔══██╗██╔═══██╗
//   ███╔╝ █████╗  ██████╔╝██║   ██║
//  ███╔╝  ██╔══╝  ██╔══██╗██║   ██║
// ███████╗███████╗██║  ██║╚██████╔╝
// ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝

// Website: https://zerolend.xyz
// Discord: https://discord.gg/zerolend
// Twitter: https://twitter.com/zerolendxyz
// Telegram: https://t.me/zerolendxyz

import {P001_LineaIsoModeAssests, IPoolConfigurator, IACLManager} from "../src/P001_LineaIsoModeAssests.sol";
import {Script} from "../lib/forge-std/src/Script.sol";

contract Deploy_P001 is Script {
    address public mai = address(0xf3B001D64C656e30a62fbaacA003B1336b4ce12A);
    address public wstETH = address(0xB5beDd42000b71FddE22D3eE8a79Bd49A568fC8F);
    address public grai = address(0x894134a25a5faC1c2C26F1d8fBf05111a3CB9487);
    address public ezETH = address(0x2416092f143378750bb29b79eD961ab195CcEea5);
    address public weth = address(0xe5D7C2a44FfDDf6b295A15c148167daaAf5Cf34f);

    address public wbtc = address(0x3aAB2285ddcDdaD8edf438C1bAB47e1a9D05a9b4);
    address public wrsETH = address(0xD2671165570f41BBB3B0097893300b6EB6101E6C);
    address public weETH = address(0x1Bf74C010E6320bab11e2e5A532b5AC15e0b8aA6);
    address public usde = address(0x5d3a1Ff2b6BAb83b63cd9AD0787074081a52ef34);
    address public dai = address(0x4AF15ec2A0BD43Db75dd04E62FAA3B8EF36b00d5);

    address public provider = address(0xC44827C51d00381ed4C52646aeAB45b455d200eB);

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new P001_LineaIsoModeAssests();

        vm.stopBroadcast();
    }
}
