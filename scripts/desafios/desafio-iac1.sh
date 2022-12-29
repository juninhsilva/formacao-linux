#!/bin/bash
echo "Criando Grupos Necessários"
groupadd GRP_ADM GRP_VEN GRP_SEC
echo "Grupos Criados com Sucesso"

echo "Criando Diretórios e Permissões"
cd /var/ || exit
sudo mkdir files
sudo mkdir publico adm ven sec

echo "Alterando Propriedade dos Diretórios"
sudo chown root publico adm ven sec
echo "Propriedades Alteradas com Sucessos"

echo "Alterando Permissões dos Diretórios"
sudo chmod 777 publico
sudo chmod 770 adm GRP_ADM
sudo chmod 770 ven GRP_VEN
sudo chmod 770 sec GRP_SEC
echo "Diretórios criados com Sucesso"

echo "Criando Usuários"
sudo useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_ADM && sudo passwd carlos -e
sudo useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_ADM && sudo passwd maria -e
sudo useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_ADM && sudo passwd joao -e

sudo useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_VEN && sudo passwd debora -e
sudo useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_VEN && sudo passwd sebastiana -e
sudo useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_VEN && sudo passwd roberto -e

sudo useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_SEC && sudo passwd josefina -e
sudo useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_SEC && sudo passwd amanda -e
sudo useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 1234567890) -g GRP_SEC && sudo passwd rogerio -e
echo "Usuários criados com Sucesso\n\nFim......"
