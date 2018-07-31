const HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "virtual armed pumpkin stadium crucial sign shop nuclear purpose shield cave tomato"; 
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
      provider: new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/c7ccca1b03e943ada5f6b22ed5cc3cc0"),
      network_id: '*',  
      gas: 4500000,
      gasPrice: 25000000000
    }
  }
}
