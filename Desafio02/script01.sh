# /bin/bash

userdel -r -f carlos
userdel -r -f  maria
userdel -r -f  joao
userdel -r -f  debora
userdel -r -f  sebastiana
userdel -r -f  roberto
userdel -r -f  josefina
userdel -r -f  amanda
userdel -r -f  rogerio

cd /

mkdir publico adm ven sec

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

chmod 777 publico

chmod 770 adm ven sec

useradd carlos -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_ADM
useradd maria -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_ADM
useradd joao -c "Joao Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_ADM

useradd debora -c "Debora Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_VEN
useradd roberto -c "Roberto Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_VEN

useradd josefina -c "Josefina Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_SEC
useradd amanda -c "Amanda Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -s /bin/bash -m -p $(openssl passwd -5 123@mudar) -G GRP_SEC
