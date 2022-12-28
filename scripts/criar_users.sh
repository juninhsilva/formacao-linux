#!/bin/bash
echo "Criando usuários em lote"
sudo_group="sudo"

for ((i=0; i<=10; i++)); do       
	echo "Criando usuário guest$i"
	sudo useradd guest$i -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt 123)
	sudo passwd -e guest$i
	sudo usermod -G  $sudo_group guest$i
	echo "Usuário guest$i criado com sucesso"
	echo "Usuário guest$i pertence ao grupo $sudo_group"
done
