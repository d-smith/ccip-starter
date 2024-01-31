import "forge-std/Script.sol";
import "../src/Receiver.sol";

contract ReceiverScript is Script {
    uint256 private deployerPrivateKey;
    address private routerAddress;

    function setUp() public {
        deployerPrivateKey = vm.envUint("DEPLOYER_KEY");
        routerAddress = vm.envAddress("ROUTER_ADDRESS");
    }

    function run() public {
         vm.startBroadcast(deployerPrivateKey);
         new Receiver(routerAddress);
         vm.stopBroadcast();
    }
}