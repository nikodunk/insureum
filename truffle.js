//const HDWalletProvider = require("truffle-hdwallet-provider");

// Allows us to use ES6 in our migrations and tests.
require('babel-register')

module.exports = {
  networks: {
    development: {
      host: 'localhost',
      port: 7545,
      network_id: '*' // Match any network id
    }//,
    // rinkeby: {
    //   provider: new HDWalletProvider('mnemonic', "https://rinkeby.infura.io"),
    //   network_id: "4",  
    //   gas: 4500000,
    //   gasPrice: 25000000000
    // }
  }
}
