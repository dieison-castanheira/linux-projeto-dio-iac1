#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd -m -s /bin/bash carlos  -G GRP_ADM
useradd -m -s /bin/bash maria  -G GRP_ADM
useradd -m -s /bin/bash joao  -G GRP_ADM

useradd -m -s /bin/bash debora  -G GRP_VEN
useradd -m -s /bin/bash sebastiana  -G GRP_VEN
useradd -m -s /bin/bash roberto  -G GRP_VEN

useradd -m -s /bin/bash josefina  -G GRP_SEC
useradd -m -s /bin/bash amanda  -G GRP_SEC
useradd -m -s /bin/bash rogerio  -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."


