const MyToken = artifacts.require("MyToken");
const PresaleCrowdsale = artifacts.require("PresaleCrowdsale");
const { toHex } = web3.utils;

module.exports = (deployer, network, [owner]) => {
  return deployer
    .then(() => deployer.deploy(MyToken, "Mitsein", "MTS", 18, 21000000))
    .then(() => deployer.deploy(PresaleCrowdsale, 10000, owner, MyToken.address, owner))
    .then(() => MyToken.deployed())
    .then(token => token.approve(PresaleCrowdsale.address, toHex((1 * (10 ** 18)))));
};