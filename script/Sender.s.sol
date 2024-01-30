import "forge-std/Script.sol";
import "../src/Sender.sol";

contract SenderScript is Script {
    uint256 private deployerPrivateKey;
    address private routerAddress;
    address private linkAddress;

    function setUp() public {
        deployerPrivateKey = vm.envUint("DEPLOYER_KEY");
        routerAddress = vm.envAddress("ROUTER_ADDRESS");
        linkAddress = vm.envAddress("LINK_ADDRESS");
    }

    function run() public {
         vm.startBroadcast(deployerPrivateKey);
         new Sender(routerAddress, linkAddress);
         vm.stopBroadcast();
    }
}