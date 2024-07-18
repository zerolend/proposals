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
    IPoolConfigurator public config =
        IPoolConfigurator(0xf17218B09699d0F7145e40E771e72130FF616498);
    IACLManager public acl =
        IACLManager(0xb2178109A414C3a869E5104283Fcf1a18923D0B8);

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new P001_LineaIsoModeAssests(
            mai,
            wstETH,
            grai,
            ezETH,
            weth,
            address(config),
            address(acl)
        );

        vm.stopBroadcast();
    }
}
