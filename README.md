# README
## Installation des prérequis (unbutu 18.04.lts)
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install build-essential
sudo apt-get install libssl-dev zlib1g-dev sqlite3 libsqlite3-dev

# rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init - bash)"' >> ~/.bashrc
exec $SHELL

# ruby (là tu peux prendre 5 minutes de pause)
rbenv install 3.1.2 -v 
```

## Installation
1. Génère ton PAT et clone le repo *(optionnel)*
```bash
git clone https://github.com/EricB2A/TSM_CloudSys_back_pw1.git
username: ton username
Password: PAT
```
2. Rails installation
```bash
gem install rails
echo eval "$(rbenv init -)" >> ~/.bash_profile
source ~/.bashrc
```
3. Installation des dépendances
```bash
cd TSM_CloudSys_back_pw1
bundle install
RAILS_ENV=production bundle exec rake db:create db:migrate db:seed
```
4. Edit des secrets
```bash
EDITOR="vim" bin/rails credentials:edit
```
Si c'est la merde ici, supprime ce qui a été généré et refait ta master key
```bash
rm config/master.key
rm config/credentials.yml.enc

EDITOR="vim" bin/rails credentials:edit
```
5. Lancer le serveur 
```
rails s -e production
```

Le serveur tourne sur le port 3000 !