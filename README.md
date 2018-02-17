# TET-Proyecto1
Repositorio para el manejo del proyecto 1 de la materia TÃ³picos Especiales en TelemÃ¡tica (universidad EAFIT 2018-1)

Especificaciones 

	Diseño
		
		Descripción
Sistema que, mediante el acceso de usuarios a través de un dispositivo móvil, registra y almacena datos del gps, incluyendo fecha y hora y que posteriormente permite a los usuarios consultar la ruta recorrida en una fecha específica.

Requisitos funcionales
-El sistema debe recibir y almacenar datos de dispositivo móviles
-El sistema debe contar con autenticación de usuario
-El sistema debe mostrar las posiciones almacenadas sobre un mapa
-El sistema debe limitar el acceso a la información para los usuarios a los datos que le correspondan a cada uno
-El sistema debe mostrar las posiciones almacenadas sobre un mapa

Restricciones
El GPS enviará señales una vez cada segundo


	Tecnologías
	
		Lenguaje: Ruby
		Framework Backend: Rails
		Framework Frontend: Templates HTML
		Web App Server: Puma
		Base de datos: Postgres

Instalación

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


Ejecución
Para ejecutar la aplicación, se debe correr el siguiente comando ubicado en la carpeta del proyecto (/home/user1/Desktop/TET-Proyecto1/proyectoGPS)
$ rails s -b 'ssl://10.131.137.161:4000?key=localhost.key&cert=localhost.crt'

Servicios

https://10.131.137.161:4000/users/sign_in
Método: GET
Devuelve el HTML de la página

https://10.131.137.161:4000/users/sign_in
Método: POST
Envía los datos de usuario para crear una nueva sesión

https://10.131.137.161:4000/users/sign_out
Método: DELETE
Destuye la sesión actual

https://10.131.137.161:4000/users/sign_up
Método: GET
Almacena en la base de datos los datos de un nuevo usuario

https://10.131.137.161:4000/positions
Método: GET
Devuelve el HTML de la página

https://10.131..137.161:4000/positions
Método: POST
Envía los datos de la posición actual a la base de datos

https://10.131.137.161:4000/map
Método: GET
Consulta en la base de datos las posiciones asociadas al usuario de la sesión actual


