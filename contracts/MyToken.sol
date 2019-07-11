pragma solidity 0.5.8;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract MyToken is ERC20, ERC20Detailed {
	
	constructor(string memory _name, string memory _symbol, uint8 _decimals, uint256 _amount) 
	    ERC20Detailed(_name, _symbol, _decimals) 
	    public {
		    require(_amount > 0, "amount has to be greater than 0");
		    _mint(msg.sender, _amount);
		}
}