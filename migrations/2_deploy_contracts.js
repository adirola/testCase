var ConvertLib = artifacts.require("./ConvertLib.sol");
var NinetyEightC = artifacts.require("./NinetyEightC.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, NinetyEightC);
  deployer.deploy(NinetyEightC);
};
