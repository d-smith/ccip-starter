const ethDeploy = require("../broadcast/Receiver.s.sol/80001/run-latest.json");

const main = async () => {
    //console.log(ethDeploy.transactions);
    receiverAddress =
        ethDeploy.transactions.filter(t => t.contractName == "Receiver")
            .map(t => t.contractAddress)[0];
    console.log(`${receiverAddress}`)

}

main();