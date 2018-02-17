# TET-Proyecto1
Repositorio para el manejo del proyecto 1 de la materia Tópicos Especiales en Telemática (universidad EAFIT 2018-1)

Especificaciones 

	Dise�o
		
		Descripci�n
Sistema que, mediante el acceso de usuarios a trav�s de un dispositivo m�vil, registra y almacena datos del gps, incluyendo fecha y hora y que posteriormente permite a los usuarios consultar la ruta recorrida en una fecha espec�fica.

Requisitos funcionales
-El sistema debe recibir y almacenar datos de dispositivo m�viles
-El sistema debe contar con autenticaci�n de usuario
-El sistema debe mostrar las posiciones almacenadas sobre un mapa
-El sistema debe limitar el acceso a la informaci�n para los usuarios a los datos que le correspondan a cada uno
-El sistema debe mostrar las posiciones almacenadas sobre un mapa

Restricciones
El GPS enviar� se�ales una vez cada segundo


	Tecnolog�as
	
		Lenguaje: Ruby
		Framework Backend: Rails
		Framework Frontend: Templates HTML
		Web App Server: Puma
		Base de datos: Postgres

Instalaci�n

GIT
$ sudo yum install -y git-core subversion

RVM
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
$ \curl -sSL https://get.rvm.io | bash -s stable --rails --ruby

Postgresql
$ sudo yum install postgresql-server postgresql-contrib
$ sudo postgresql-setup initdb
$ sudo systemctl start postgresql
$ sudo systemctl enable postgresql
$ sudo -i -u postgres
$ createuser --interactive
$ user1
$ y

puertos
sudo firewall-cmd --zone=public --add-port=4000/tcp --permanent
sudo firewall-cmd --reload


Ejecuci�n
Para ejecutar la aplicaci�n, se debe correr el siguiente comando ubicado en la carpeta del proyecto (/home/user1/Desktop/TET-Proyecto1/proyectoGPS)
$ rails s -b 'ssl://10.131.137.161:4000?key=localhost.key&cert=localhost.crt'

Servicios

https://10.131.137.161:4000/users/sign_in
M�todo: GET
Devuelve el HTML de la p�gina

https://10.131.137.161:4000/users/sign_in
M�todo: POST
Env�a los datos de usuario para crear una nueva sesi�n

https://10.131.137.161:4000/users/sign_out
M�todo: DELETE
Destuye la sesi�n actual

https://10.131.137.161:4000/users/sign_up
M�todo: GET
Almacena en la base de datos los datos de un nuevo usuario

https://10.131.137.161:4000/positions
M�todo: GET
Devuelve el HTML de la p�gina

https://10.131..137.161:4000/positions
M�todo: POST
Env�a los datos de la posici�n actual a la base de datos

https://10.131.137.161:4000/map
M�todo: GET
Consulta en la base de datos las posiciones asociadas al usuario de la sesi�n actual


