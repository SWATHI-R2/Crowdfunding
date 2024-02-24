const MyContract = artifacts.require("CroudFunding");

module.exports = async function (deployer) {
  await deployer.deploy(MyContract);

  // Get the deployed instance
  const myContractInstance = await MyContract.deployed();

  // Update the contract address in a configuration file, database, or any other storage mechanism
  const contractAddress = myContractInstance.address;

  // For demonstration, let's assume you have a configuration file
  const fs = require('fs');
  const configFile = '../config.json';

  // Read the existing config file
  let config = {};
  if (fs.existsSync(configFile)) {
    config = JSON.parse(fs.readFileSync(configFile, 'utf-8'));
  }

  // Update the contract address in the config
  config.contractAddress = contractAddress;

  // Write back the updated config file
  fs.writeFileSync(configFile, JSON.stringify(config, null, 2));

  console.log(`Contract address updated to: ${contractAddress}`);
};