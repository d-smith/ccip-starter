const ethDeploy = require("../broadcast/Sender.s.sol/11155111/run-latest.json");

const main = async () => {
    //console.log(ethDeploy.transactions);
    senderAddress =
        ethDeploy.transactions.filter(t => t.contractName == "Sender")
            .map(t => t.contractAddress)[0];
    console.log(`${senderAddress}`)

}

main();