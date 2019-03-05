pragma solidity ^0.5.0;

import "openzeppelin-eth/contracts/token/ERC20/StandaloneERC20.sol";
import "openzeppelin-eth/contracts/ownership/Ownable.sol";

contract PXKTToken is StandaloneERC20, Ownable {

    /**
     *  @dev Initializes the token, sets the initialHolder as also the owner of the Contract.
     */
    function initialize(
        string memory name, string memory symbol, uint8 decimals, uint256 initialSupply, address initialHolder,
        address[] memory minters, address[] memory pausers
    ) initializer public {
        uint256 totalSupply = initialSupply * (10 ** uint256(decimals));

        StandaloneERC20.initialize(name, symbol, decimals, totalSupply, initialHolder, minters, pausers);
        Ownable.initialize(initialHolder);
    }
}