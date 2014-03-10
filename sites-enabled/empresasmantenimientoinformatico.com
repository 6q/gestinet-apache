<VirtualHost *:80>
	ServerName loc.empresasmantenimientoinformatico.com
	DocumentRoot /home/gestinet/www/empresasmantenimientoinformatico.com

	SetEnv APPLICATION_ENV "development"

	<Directory /home/gestinet/www/empresasmantenimientoinformatico.com>
		DirectoryIndex index.php
		AllowOverride All
		Order allow,deny
		Allow from all
	</Directory>
</VirtualHost>
