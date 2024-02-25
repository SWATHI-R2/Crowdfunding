const MyContract = artifacts.require("CroudFunding");

module.exports = async function (deployer) {
  await deployer.deploy(MyContract);

  const myContractInstance = await MyContract.deployed();

  const contractAddress = myContractInstance.address;

  const fs = require('fs');
  const configFile = '../config.json';

  let config = {};
  if (fs.existsSync(configFile)) {
    config = JSON.parse(fs.readFileSync(configFile, 'utf-8'));
  }

  config.contractAddress = contractAddress;

  fs.writeFileSync(configFile, JSON.stringify(config, null, 2));

  console.log(`Contract address updated to: ${contractAddress}`);
};