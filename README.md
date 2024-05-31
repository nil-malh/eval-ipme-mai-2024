The migrations are run with `node ace migration:run`


# Answers : 

## Compute (API et Backend) :

- Requêtes quotidiennes : 30 millions (moyenne)
- Requêtes par seconde aux heures de pointe : 500
- vCPU nécessaires : 0,25 vCPU par requête × 500 requêtes = 125 vCPU
- RAM nécessaires : 128 Mo par requête × 500 requêtes = 64 Go
## Estimations :
- Serveurs (125 vCPU, 64 Go RAM) : Utilisation de VM/Instances optimisées pour calcul
- Coût mensuel : Environ 500euros par instance × 15 = 6450 euro 

## Stockage :

- Logs : 50 Go par jour → 1.5 To par mois
- Base de données : 100 Go initial + 10% croissance mensuelle = 110 Go
Propositions de Solutions d'Infrastructure
## Architecture Cloud :

- Compute : Utiliser des instances Azure VM avec Auto-Scaling pour gérer les pics de charge.
- Base de Données : Utiliser Azure SQL Database avec Geo-Redundancy pour la haute disponibilité.
- Stockage : Utiliser Azure Blob Storage pour le stockage de fichiers et Azure Log Analytics pour les logs.
-Content Delivery Network (CDN) : Utiliser Azure CDN pour améliorer les performances de livraison des fichiers.
### Redondance et Répartition de Charge :

- Utiliser Azure Load Balancer pour distribuer la charge entre plusieurs instances.
- Configurer des points de présence (PoPs) dans des régions stratégiques via Azure CDN pour réduire la latence.
### Sécurité et Conformité :

- Utiliser Azure Active Directory (AAD) pour gérer les accès.
- Activer les audits de sécurité réguliers et la surveillance continue.
### Backup et Restauration :

- Configurer des sauvegardes automatiques pour Azure SQL Database et Azure Blob Storage.
- Utiliser Azure Backup pour la gestion centralisée des sauvegardes.
### Stratégie de Déploiement et de Backup
- CI/CD : Configurer un pipeline CI/CD avec Azure DevOps/GitLab CI pour automatiser les déploiements.
### Backup :
- Sauvegarder les bases de données quotidiennement avec une rétention de 30 jours.
- Sauvegarder les fichiers quotidiennement sur Azure Blob Storage avec une politique de versionnage et une rétention de 30 jours.
