pragma solidity ^0.4.15;

import "./itMaps.sol";

/**
 * The cycleIterable contract does this and that...
 */
contract cycleIterable {
	
	using itMaps for itMaps.itMapAddressUint;
	itMaps.itMapAddressUint im_myAddressUintMap;
	
	function insert ( address key, uint value) returns (bool ress) {
    	return im_myAddressUintMap.insert( key, value); 
  	}

  	function sumOfAccounts() constant returns(uint256) {
  		uint256 res = 0;
  		for(uint i = 0;i<im_myAddressUintMap.size();i++){
  			res += im_myAddressUintMap.getValueByIndex(i);
  		}
  		return res;
  	}	
}

