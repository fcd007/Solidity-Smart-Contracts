// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.5.99 <0.8.0;

// a palavra chave public marca variaveis
// para acesso de outros contratos

contract Coin{ 
    address public minter;
    mapping( address => uint) public balances;
    //evnto abaixo clientes para modificao especifica 
    //de contratos alterar suas declaracoes.
    event Sent(address from, address to, uint amount);
    
    //construtor código online roda enquanto o contratos
    //é criado
    constructor() {
        minter = msg.sender;
    }
    
    //Envio de montantes novos criando coints para o endereco
    // pode online para chamada de criacao de contratos
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        require(amount < 1e60);
        balances[receiver] += amount;
    }
    
    //Envio de montantes para Coins existentes
    // de qualquer chamada para um endereco
    function send(address receiver, uint amount) public {
        require(amount <= balances[msg.sender], "insufficient balance.");
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}