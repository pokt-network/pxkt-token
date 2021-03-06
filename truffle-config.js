'use strict';

const HDWalletProvider = require("truffle-hdwallet-provider");

const INFURA_KEY = process.env.INFURA_KEY;
const RINKEBY_PRIVATE_KEY = process.env.RINKEBY_PRIVATE_KEY;
const MAINNET_PRIVATE_KEY = process.env.MAINNET_PRIVATE_KEY;

module.exports = {
  networks: {
    local: {
      host: 'localhost',
      port: 8545,
      gas: 5000000,
      gasPrice: 5e9,
      network_id: '*'
    },
    rinkeby: {
      provider: () => new HDWalletProvider(RINKEBY_PRIVATE_KEY, "https://rinkeby.infura.io/v3/" + INFURA_KEY),
      network_id: '4'
    },
    mainnet: {
      provider: () => new HDWalletProvider(MAINNET_PRIVATE_KEY, "https://mainnet.infura.io/v3/" + INFURA_KEY),
      network_id: '1'
    }
  }
};