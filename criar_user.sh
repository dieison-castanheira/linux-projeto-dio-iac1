#!/bin/bash

echo "Criando usuários do sistema"


sudo useradd -m -s /bin/bash -c "Usuário convidado" guest120
echo "guest120:Senha123" | sudo chpasswd
sudo passwd -e guest120

sudo useradd -m -s /bin/bash -c "Usuário convidado" guest121
echo "guest121:Senha123" | sudo chpasswd
sudo passwd -e guest121

sudo useradd -m -s /bin/bash -c "Usuário convidado" guest122
echo "guest122:Senha123" | sudo chpasswd
sudo passwd -e guest122

sudo useradd -m -s /bin/bash -c "Usuário convidado" guest123
echo "guest123:Senha123" | sudo chpasswd
sudo passwd -e guest123





echo "Finalizando"

