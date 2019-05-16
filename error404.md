## Not Found
### The requested URL ... was not found on this server.

### Permalinks
```
sudo a2enmod rewrite
```
### editar : 
```
sudo gedit /etc/apache2/apache2.conf


<Directory /var/www/>
Options Indexes FollowSymLinks
AllowOverride All
    RewriteEngine On
Require all granted
</Directory>
```
