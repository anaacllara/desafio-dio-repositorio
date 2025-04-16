#! /bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados!"

echo "Criando usuários e adicionando-os  aos grupos..."
useradd carlos -c "Carlos" -s /bin/bash -m -p " $(openssl passwd -6 Senha123)" -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p " $(openssl passwd -6 Senha123)" -G GRP_ADM
useradd joao -c "Joao" -s /bin/bash  -m -p " $(openssl passwd -6 Senha123)" -G GRP_ADM

useradd debora -c "Debora" -s /bin/bash -m -p " $(openssl passwd -6 Senha123)" -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p " $(openssl passwd -6 Senha123)" -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p " $(openssl passwd -6 Senha123)" -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p " $(openssl passwd -6 Senha123)" -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p " $(openssl passwd -6 Senha123)" -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p " $(openssl passwd -6 Senha123)" -G GRP_SEC
echo "Usuarios criados e adicionados aos grupos!"

echo "Especificando permissões  de cada grupo..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo "Infraestrutura com Código Finalizada."
