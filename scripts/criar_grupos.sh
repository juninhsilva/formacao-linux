#!/bin/bash

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_CSM

echo -e "Grupos Criados com Sucesso!\n\n\nCriando usuários e vinculando aos grupos"

useradd vendedor -c "Vendedor" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd vendedor -c "Administrativo" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd vendedor -c "CSM" -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_CSM

echo "Usuários criados com sucesso!"
