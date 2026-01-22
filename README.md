<p align="center">
  <img src="Images/images.png" alt="Titre Bash" width="400">
</p>




# bash-admin-scripts

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
./backup.sh
