var Migrations = artifacts.require("./crowd.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};