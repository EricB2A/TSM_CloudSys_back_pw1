# README
## Prérequis
* ruby : 3.1.2

[Voir ce tutoriel en cas de doute](https://www.vultr.com/docs/installing-ruby-on-rails-on-ubuntu-20-04/) *(pas besoin d'installer nodejs & yarn)*
## Installation
Installation des dépendances :
```bash
bundle install
rails db:create db:migrate db:seed
```

Edit des secrets
```bash
EDITOR="vim" bin/rails credentials:edit
```
Il faut s'assurer que la `secret_key_base` soit présente. 

Lancer le serveur :
```
rails s -e production
```

Le serveur tourne sur le [port 3000](localhost:3000).