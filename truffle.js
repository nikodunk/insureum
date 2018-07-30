const HDWalletProvider = require("truffle-hdwallet-provider");

// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!
// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!
// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!
var mnemonic = "virtual armed pumpkin stadium crucial sign shop nuclear purpose shield cave tomato"; // DELETE ME!!!!
// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!
// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!
// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!// DELETE ME!!!!




// Allows us to use ES6 in our migrations and tests.
require('babel-register')

module.exports = {
  networks: {
    development: {
      host: 'localhost',
      port: 7545,
      network_id: '*' // Match any network id
    },
    rinkeby: {
      provider: new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/c7ccca1b03e943ada5f6b22ed5cc3cc0"),
      network_id: "4",  
      gas: 4500000,
      gasPrice: 25000000000
    }
  }
}
