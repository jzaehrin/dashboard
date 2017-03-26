# Dashboard backend

## PRW3

Dans le cadre du projet, le serveur Web est déjà présent en production.

## Pré-requis

Version 5 de Ruby on Rails avec au minimum la version 2.4 de Ruby.

## Initialisation

Pour initialiser, il est nécessaire de configuré le fichier `config/database.yml` pour lui donner l'accés à la base de données, puis il suffit de lancer les commandes suivantes : 

```bash
  $ bundle install
  $ rails db:create db:migrate db:seed
```

### Développement

Pour lancer le serveur dans un environnement de dév, lancez `rails s`.
