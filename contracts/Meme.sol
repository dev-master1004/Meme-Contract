pragma solidity 0.6.12;

import './ERC1155Tradable.sol';

/**
 * @title MEMELtd
 * MEMELtd - Collect limited edition NFTs from MEMELtd
 */
contract MEMELtd is ERC1155Tradable {	
	constructor(address _proxyRegistryAddress) public ERC1155Tradable("MEMELTD", "MEME", _proxyRegistryAddress) {
		_setBaseMetadataURI("https://api.meme.ai/hals/");
	}

	function contractURI() public view returns (string memory) {
		return "https://api.meme.ai/contract/meme-erc1155";
	}
}