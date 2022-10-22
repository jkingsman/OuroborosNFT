// SPDX-License-Identifier: AGPL-3.0-only

/* Authored by FlightlessApteryx.eth
 * Using components:
 *    Base64 from OpenZeppelin Contracts (https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Base64.sol)
 *        Copyright (c) 2016-2022 zOS Global Limited and contributors
 *    ERC721 from Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC721.sol)
 *        Licensed GPLv3, see LICENSE.md in original repo for information
 *    Ouroborous by AnonMoos, Public Domain
*/

pragma solidity ^0.8.7;

import "./ERC721.sol";
import "./Base64.sol";

contract MintableMiscellany is ERC721 {
    uint256 private _tokenIds;
    mapping(uint256 => string) private _tokenURIs;
    string private _baseURI;

    constructor() ERC721("OnChainEverything", "OCE") {}

    function contractURI() public view returns (string memory) {
        return _contractMetadataURI;
    }

    function setBaseURI(string memory newBase) public onlyOwner {
        _baseURI = newBase;
    }

    function setContractMetadataURI(string memory newContractMetadataURI) public onlyOwner {
        _contractMetadataURI = newContractMetadataURI;
    }

    function mintNFT(address recipient, string memory _tokenURI) public onlyOwner {
        _tokenIds += 1;

        uint256 newItemId = _tokenIds;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, _tokenURI);
    }

    function _setTokenURI(uint256 id, string memory _tokenURI) internal {
        require(_ownerOf[id] != address(0), "NOT_MINTED");
        _tokenURIs[id] = _tokenURI;
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        require(_ownerOf[id] != address(0), "NOT_MINTED");

        string memory _tokenURI = _tokenURIs[id];
        return bytes(_baseURI).length > 0 ? string(abi.encodePacked(_baseURI, _tokenURI)) : _tokenURI;
    }
}
