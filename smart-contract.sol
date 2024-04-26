// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts@4.3.2/token/ERC1155/ERC1155.sol";

contract GovID is ERC1155 {
    uint256 public constant _certificate = 1; // Token ID for certificate

    mapping(address => bool) public hasCertificate; // Track if an address already has a certificate NFT

    constructor() ERC1155("https://your-metadata-uri/") {}

    // Function to mint certificate NFT with user details
    function mintCertificate(
        address account,
        string memory name,
        string memory course_name,
        string memory organisation,
        string memory completionDate
    ) public {
        require(!hasCertificate[account], "Certificate already minted for this address");

        _mint(account, _certificate, 1, abi.encodePacked(name, course_name, organisation, completionDate));
        hasCertificate[account] = true;
    }

    // Function to check if an address has a certificate
    function checkCertificate(address account) public view returns (bool) {
        return hasCertificate[account];
    }

    // Function to reset certificate status (for testing purposes)
    function resetCertificateStatus(address account) public {
        hasCertificate[account] = false;
    }
}
