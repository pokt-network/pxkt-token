pragma solidity ^0.4.24;

import "zos-lib/contracts/Initializable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract PXKTToken is Initializable, ERC20, ERC20Detailed, Ownable {

    function initialize(uint256 _totalSupply, address _owner) initializer public {
        ERC20Detailed("Pocket Exchange Token", "PXKT", 18)
        ERC20()
        this._totalSupply = _totalSupply
        this._owner = _owner
    }
}