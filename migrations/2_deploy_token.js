const MyToken = artifacts.require("MyToken");

module.exports = function(deployer) {
  const _name = 'Mitsein';
  const _symbol = 'MTS';
  const _decimals = 18;
  
  deployer.deploy(MyToken, _name, _symbol, _decimals);
};
