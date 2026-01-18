// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleStorage {
    // Variável de estado para armazenar um número
    uint256 public favoriteNumber;

    // Função para atualizar o número
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // Função para ler o número (view não gasta gas na leitura externa)
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}