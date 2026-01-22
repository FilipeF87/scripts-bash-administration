<p align="center">
  <img src="Images/images.png" alt="Titre Bash" width="400">
</p>




# Bash-admin-scripts

## Description

`bash-admin-scripts` est une collection de scripts Bash pour l’automatisation des tâches d’administration système Linux.  
Ce projet permet de gérer les sauvegardes, la création d’utilisateurs, la surveillance de l’espace disque et le nettoyage des logs de manière simple, sécurisée et efficace.

Ces scripts sont conçus pour être facilement déployés sur des serveurs Linux et intégrés à des tâches planifiées (cron).

---

## Contenu du projet

| Script | Description |
|--------|-------------|
| `backup.sh` | Sauvegarde compressée d’un répertoire avec horodatage |
| `create_users.sh` | Création d’utilisateurs depuis un fichier texte, avec mot de passe temporaire et expiration |
| `disk_check.sh` | Vérification de l’espace disque avec alerte si le seuil est dépassé |
| `clean_logs.sh` | Nettoyage des fichiers `.log` anciens pour libérer de l’espace disque |
| `users.txt` | Exemple de fichier contenant la liste des utilisateurs à créer |

---

## Prérequis

- Linux (Ubuntu, Debian, CentOS, etc.)
- Bash version 4+
- Droits d’administration pour la création d’utilisateurs et la suppression de logs
- (Optionnel) Cron pour automatiser l’exécution des scripts

---

## Utilisation

### 1. Backup

```bash
chmod +x backup.sh
./backup.sh###
```
   
  Sauvegarde du dossier /home par défaut dans /backup

  Le fichier est horodaté pour éviter les collisions

  Vérifie que la sauvegarde a réussi
  

2. Création d’utilisateurs

    Remplir le fichier users.txt avec les noms des utilisateurs (1 par ligne)

    Lancer le script :

```bash
chmod +x create_users.sh
sudo ./create_users.sh
```

   Les utilisateurs sont créés avec un mot de passe temporaire (ChangeMe123)

  Le mot de passe est expiré pour forcer le changement à la première connexion


3. Vérification de l’espace disque
```bash
chmod +x disk_check.sh
./disk_check.sh
```

  Vérifie l’utilisation de la partition / par défaut

  Affiche un message d’alerte si l’espace utilisé dépasse 80%


4. Nettoyage des logs

```bash
chmod +x clean_logs.sh
sudo ./clean_logs.sh
```
  upprime les fichiers .log de plus de 7 jours dans /var/log

  Paramètre RETENTION_DAYS modifiable selon vos besoins

Planification automatique (cron)

Pour automatiser les tâches, par exemple :

# Sauvegarde tous les jours à 2h du matin
0 2 * * * /chemin/vers/backup.sh

# Vérification disque tous les jours à 8h
0 8 * * * /chemin/vers/disk_check.sh

Bonnes pratiques

  Toujours vérifier les permissions avant d’exécuter les scripts

  Tester sur un environnement non critique avant de déployer en production

  Personnaliser les variables en début de script (SOURCE_DIR, BACKUP_DIR, THRESHOLD, RETENTION_DAYS…)


