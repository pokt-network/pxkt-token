'use strict';

const INFURA_KEY = process.env.INFURA_KEY;

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
      host: 'https://rinkeby.infura.io/v3/' + INFURA_KEY,
      network_id: '4'
    }
  }
};