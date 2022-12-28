#!/bin/bash
echo "Deletando usuários em lote"
sudo_group="sudo"

for ((i=0; i<=10; i++)); do       
        echo "Criando usuário guest$i"
        sudo deluser guest$i  --remove-home
        echo "Usuário guest$i deletado com sucesso"
done
