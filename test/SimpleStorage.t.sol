// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    // Esta função corre antes de cada teste (configuração)
    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    // Teste para verificar se o número favorito começa em 0
    function testInitialValueIsZero() public {
        assertEq(simpleStorage.retrieve(), 0);
    }

    // Teste para verificar se a função store funciona
    function testStoreUpdatesValue() public {
        simpleStorage.store(77);
        assertEq(simpleStorage.retrieve(), 77);
    }
}