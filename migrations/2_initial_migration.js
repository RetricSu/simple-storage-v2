const SimpleStorageV2 = artifacts.require("SimpleStorageV2");

module.exports = function (deployer) {
  deployer.deploy(SimpleStorageV2);
};
