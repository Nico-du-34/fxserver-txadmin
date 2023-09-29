![dev](https://github.com/Nico-du-34/fxserver-txadmin/assets/140889974/48e459cf-6012-4a64-9171-fd64c051f75b)

# fxserver-txadmin

 Docker fivem artifact ussing txadmin


# Build image

```bash
docker-compose up --build
```

# DB Host

Modifier la valeur de DB_HOST dans votre fichier docker-compose.yml pour qu'elle corresponde à l'adresse IP de votre machine hôte. Vous ne pouvez pas utiliser "localhost" car cela ferait référence au conteneur lui-même.

Vous pouvez obtenir l'adresse IP de votre machine hôte en exécutant la commande suivante dans votre terminal :

```bash
ipconfig (sur Windows)
```
ou

```bash
ifconfig (sur Linux ou macOS)

```
Trouvez la section de votre interface réseau (par exemple, eth0, en0, wlan0) et notez l'adresse IP. Utilisez cette adresse IP comme valeur pour DB_HOST.

Assurez-vous que MySQL sur XAMPP est configuré pour accepter les connexions distantes. Vous devrez peut-être modifier le fichier my.cnf (ou my.ini sur Windows) pour autoriser les connexions depuis d'autres hôtes. Cherchez la section [mysqld] dans ce fichier et ajoutez ou modifiez la ligne suivante :

```css
bind-address = 0.0.0.0
```
Assurez-vous que le pare-feu de votre machine hôte permet les connexions entrantes sur le port MySQL (par défaut, 3306).

Assurez-vous que le conteneur Docker peut atteindre la machine hôte. Si vous exécutez Docker sous Windows, assurez-vous que vous utilisez la version WSL 2 pour une meilleure connectivité entre les conteneurs et la machine hôte.

Une fois que vous avez effectué ces ajustements, relancez votre service Docker avec docker-compose up pour appliquer les modifications.

Assurez-vous également que votre application est configurée pour se connecter à la base de données en utilisant les valeurs des variables d'environnement que vous avez définies dans le fichier docker-compose.yml (DB_HOST, DB_PORT, DB_DATABASE, DB_USERNAME, DB_PASSWORD). Si tout est correctement configuré, votre application Docker devrait pouvoir se connecter à la base de données MySQL XAMPP sur votre machine hôte.
