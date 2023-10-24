#/bin/bash
#camada segurança

# Imprime uma mensagem no terminal
echo "Digite o nome do usuário: "

# Lê o que o usuário digitou e atribue para a variável de ambiente denominada "user"
read user
sudo adduser $user
sudo usermod -a -G sudo $user

# O update atualiza os indices das pastas
sudo apt update && sudo apt upgrade
java --version
if [ $? != 0 ]
	then
		sudo apt install openjdk-17-jre -y
fi
mysql --version
if [ $? != 0 ]
	then
		sudo apt install mysql-server
fi
git clone https://github.com/JonasKauan/assistente-instalacao-chefware.git
cd assistente-instalacao-chefware/ 
sudo mysql < script.sql
echo "Muito obrigado por contratar os serviços da Chefware"
java -jar ChefwareLoocaGrupo.jar