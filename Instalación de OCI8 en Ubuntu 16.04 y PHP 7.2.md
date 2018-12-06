# Instalación de OCI8 en Ubuntu 16.04 y PHP 7.2

## Instalar librerias: Oracle Instant Client y SDK
### Paso 1

Descargar Oracle Instant Client y SDK del sitio web de Oracle.
(Es necesario iniciar sesión en la página de Oracle)

[http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html](http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html)

Archivos: `instantclient-basic-linux.x64-12.2.0.1.0.zip` y `instantclient-sdk-linux.x64-12.2.0.1.0.zip`.

### Paso 2

Copiar archivos .zip a la carpeta que se crea a continuación

```
mkdir /opt/oracle
```

### Paso 3

Descomprimir.

```
cd /opt/oracle
unzip instantclient-basic-linux.x64-12.2.0.1.0.zip
unzip instantclient-sdk-linux.x64-12.2.0.1.0.zip
```

### Paso 4

A continuación, debemos crear un enlace simbólico a los archivos de Instant Client.

```
ln -s /opt/oracle/instantclient_12_2/libclntsh.so.12.1 /opt/oracle/instantclient_12_2/libclntsh.so

ln -s /opt/oracle/instantclient_12_2/libocci.so.12.1 /opt/oracle/instantclient_12_2/libocci.so

```

### Paso 5

Agrega la carpeta a nuestro `ldconfig`.

```
echo /opt/oracle/instantclient_12_2 > /etc/ld.so.conf.d/oracle-instantclient
```

### Paso 6

Actualizar los enlaces.

```
ldconfig
```

Hecho. Ahora podemos pasar a la siguiente parte.


## Instalar paquetes adicionales

Para instalar la extensión OCI8, necesitamos instalar algunos paquete adicionales.

### Paso 1

Ejecute estos comandos:

```
apt-get install php-dev php-pear build-essential libaio1
```

### Paso 2

Una vez instalado, necesitamos instalar el archivo OCI8.


```
pecl install oci8
```


Cuando se le solicite la ubicación de Instant Client, ingrese lo siguiente:

```
instantclient,/opt/oracle/instantclient_12_2
```

### Paso 3

Necesitamos decirle a PHP que cargue la extensión OCI8.

```
echo "extension = oci8.so" >> /etc/php/7.2/apache2/php.ini
echo "extension = oci8.so" >> /etc/php/7.2/cli/php.ini
```

### Paso 4

Compruebe si la extensión está habilitada.

```
php -m | grep 'oci8'
```

Si devuelve `oci8`, esta OK

### Paso 5

Reiniciar apache

```
service apache2 restart
```

Ahora puede conectarse a Oracle DBMS desde sus aplicaciones PHP.


##Codigo PHP:
```php
<html>
<head><title>Oracle demo</title></head>
<body>

<?php
//para ver errores
error_reporting(E_ALL);
ini_set('display_errors', 'On');


$conn = oci_connect('yonel', '123', '192.168.1.120/orcl');
$stid = oci_parse($conn, 'select * from tabla');
oci_execute($stid);

echo "<table>\n";
while (($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) != false){
    echo "<tr>\n";
    foreach ($row as $item) {
        echo "<td>".($item !== null ? htmlspecialchars($item, ENT_QUOTES) : "&nbsp;")."</td>\n";
    }
    echo "</tr>\n";
}
echo "</table>\n";

?>
 
</body>
</html>
```
