const MyToken = artifacts.require("./MyToken.sol");

module.exports = function(deployer) {
  deployer.deploy(MyToken, 'Mitsein', 'MTS', 18, 21000000);
};

