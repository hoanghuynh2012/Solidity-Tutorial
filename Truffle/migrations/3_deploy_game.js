const Game = artifacts.require("Game");

module.exports = (deployer) => {
  // Deploy it!
  deployer.deploy(Game);
}