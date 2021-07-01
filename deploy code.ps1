const SimpleToken = artifacts.require('EternalToken');

module.exports = async function (deployer) {
  await deployer.deploy(EternalToken, 'EternalToken', 'ESS', '10000000000000');
};