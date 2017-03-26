# Dashboard backend

## PRW3
Dans le cadre du projet, le serveur Web est déjà présent en production.

## Prerequis

Version 5 de Ruby on Rails avec au minimum la version 2.4 de Ruby.

## Initialisation

Pour initialié, il est nécessaire de configuré le fichier `config/database.yml` pour lui donné l'accées à la base de donnée. Puis il suffit de lancer les commandes suivantes : 

```bash
  $ bundle install
  $ rails db:create db:migrate db:seed
```

### Developpement

Pour lancer le serveur dans un environment de dev lancé `rails s`.
