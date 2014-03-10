<VirtualHost *:80>
	ServerName www.redcita.com
	DocumentRoot /home/gestinet/www/redcita.com

	SetEnv APPLICATION_ENV "development"

	<Directory /home/gestinet/www/redcita.com>
		DirectoryIndex index.php
		AllowOverride All
		Order allow,deny
		Allow from all
	</Directory>
</VirtualHost>
