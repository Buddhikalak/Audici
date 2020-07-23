NB: Run mysql scripts on /oauthserver/resources/schema.sql And Data.sql

----
# Audici Authentication Service
----
#### Clone the Repository
	git clone https://buddhika_lakshan@bitbucket.org/audici/audici-user-management-service.git
`cd Audici_Oauth_Server/`
#### Install The Maven For Ubuntu
	sudo apt update
	sudo apt install maven
	mvn -version
`Set maven Path:` : https://maven.apache.org/install.html
`Install Docker For Ubuntu`: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

#### Build Package
	mvn clean package
#### Create docker
	sudo docker build -t audici_auth .
#### Run Docker Image
	docker run -p 8080:8080 audici_auth
----
# Audici UserManagement Service
----
#### Clone the Repository
	git clone https://buddhika_lakshan@bitbucket.org/audici/audici-user-management-service.git
`cd Audici_Umgt_Server/
`
#### Install The Maven For Ubuntu
	sudo apt update
	sudo apt install maven
	mvn -version
`Set maven Path:` : https://maven.apache.org/install.html
`Install Docker For Ubuntu`: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

#### Build Package
	mvn clean package
#### Create docker
	sudo docker build -t audici_umgt .
#### Run Docker Image
	docker run -p 8081:8081 audici_umgt
&copy; Audici [vattz.us @Buddhika lakshan]
