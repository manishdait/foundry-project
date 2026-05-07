// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {MyNFT} from "../src/ERC721.sol";

contract ERC721Test is Test {
    MyNFT erc721;

    address bob = address(0x1);
    address jhon = address(0x2);

    function testMintToken() public {
        erc721 = new MyNFT();
        erc721.mint(bob, 0);
        address owner_of = erc721.ownerOf(0);
        assertEq(bob, owner_of);
    }

    function testTransferToken() public {
        erc721 = new MyNFT();
        erc721.mint(bob, 0);

        vm.startPrank(bob);
        erc721.safeTransferFrom(bob, jhon, 0);
        address owner_of = erc721.ownerOf(0);
        assertEq(jhon, owner_of);
    }

    function testGetBalance() public {
        erc721 = new MyNFT();
        erc721.mint(bob, 0);
        erc721.mint(bob, 1);
        erc721.mint(bob, 2);
        erc721.mint(bob, 3);

        uint256 balance = erc721.balanceOf(bob);
        assertEq(balance, 4);
    }

    function testOnlyOwnerBurnsToken() public {
        erc721 = new MyNFT();
        erc721.mint(bob, 0);

        vm.expectRevert("not owner");
        vm.startPrank(jhon);
        erc721.burn(0);

        vm.startPrank(bob);
        erc721.burn(0);
    }
}
