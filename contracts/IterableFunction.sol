pragma solidity ^0.4.15;

import "./itMaps.sol";
/**
 * The TestIterable contract does this and that...
 */

 
contract TestIterable {
	using itMaps for itMaps.itMapAddressUint;
	itMaps.itMapAddressUint im_myAddressUintMap;


	
	function insert ( address key, uint value) returns (bool ress) {
    	return im_myAddressUintMap.insert( key, value); 
  	}
  	function remove(address key) constant returns(bool success) {
  		success = im_myAddressUintMap.remove(key);
  		return success;
  	}
  	/*Delete all mapping and array. NOTE: it iterates thourgh on all items.*/
  	function destroyALL(){
  		im_myAddressUintMap.destroy();
  	}
  	/*Check if key exists in map - returns true if it does*/
	function contains(address key) constant returns(bool) {
		return im_myAddressUintMap.contains(key);
  		 
  	}
	function getSize() constant returns(uint size) {
		size = im_myAddressUintMap.size();
		return size;
	}
	
	
	function getKeyByIndex(uint idx) constant returns(address key) {
		key = im_myAddressUintMap.getKeyByIndex(idx);
		return key;
	}		
	function getValueByIndex(uint idx) constant returns (uint value) {
        value = im_myAddressUintMap.getValueByIndex(idx);
    	return value;
    }
}

