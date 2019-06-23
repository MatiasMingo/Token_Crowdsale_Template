pragma solidity 0.5.8;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/AllowanceCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/WhitelistCrowdsale.sol";


contract PresaleCrowdsale is AllowanceCrowdsale, WhitelistCrowdsale {
  constructor(
    uint256 _rate,
    address payable _wallet,
    ERC20 _token,
    address _tokenWallet
  )
    Crowdsale(_rate, _wallet, _token)
    AllowanceCrowdsale(_tokenWallet)
    public
  {}
}
