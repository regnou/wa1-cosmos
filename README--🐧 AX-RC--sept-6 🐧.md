zip -er FILENAME.zip

@@@
@@@ CONTACT - Axel REGNOULT
@@@

`RESUME`

> https://cv-regnoult-axel.web.app

`COMPANY`

> http://www.web-agency.app

# 1) README

> CONFIGURATION FOR MAC DEVELOPERS  
> This is a starter for pre-configurated MAC-dotfiles and ZSH.

Features:

1. Bootstrap 'my' UNIX-MAC setup (brew, git, zsh...)
2. Use aliases 🔥
3. Advanced ZSH-plugins (Fuzzy autocomplete + Rust-plugins)
4. Backup configurations files (VCcode, ITerm, Fonts)
5. Sync your home's dotfiles with ln

# 2) INSTALL

Directories structure:

- 1-ALIAS > aliases
- 2-LN > fast access to read/edit all your GLOBAL CONF FILES
- 3-SETUP > scripts to bootstrap a fresh install on MAC
- lib > libraries to load (TODO: it s missing a package manager for this project)

🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇
🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇
🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇

# NVM

- doc : https://github.com/creationix/nvm

- get nvm

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

- use nvm

```bash
nvm install x.x.x
nvm run node --version
nvm ls
```

- pour se mettre a jour sur une nouvelle version ?
  `nvm ls-remote`

# NPM

```bash
--save --save-exact
npm install <package>@<version>
npm view <package> versions

npm view playwright versions
```

- @@@ To update global packages, you can use

```bash
npm install -g npm -a/--upgradeAll <package>:
```

- NPM show info view v

- You can run npm list -g to see where global libraries are installed.

```bash
npm list -g
npm list -g --depth=0
```

- savoir la version la plus recente d un PKG

```bash
npm show PACKAGE version
```

- update latest version node with npm

```bash
sudo npm cache clean -f
sudo npm install -g n
sudo npm stable

sudo npm install -g npm@latest # Upgrader - la version de NPM
sudo npm install -g npm-check-updates # installer npm-check-updates POUR upgrader aux dernieres versions avec NPM
```

```bash
 > ncu -u (up pack.json to major up)
```

- npm update (do up)

```bash
npm outdated or npm outdated --parseable|wc -l
```

- shows the dependency tree

```bash
npm ls
```

- shows the dependency paths

```bash
npm ls --parseable
```

- counts number of unique dependency modules

```bash
npm ls --parseable|sed 's/._\/\(._\)/\1/g'|sort|uniq|wc -l
```

# YARN

- GLOBAL INSTALL

```bash
  yarn global add ndb
```

- UPDATE YARN

```bash
  brew upgrade yarn
```

- PB modules (unmet dep)

```bash
remove yarn.lock
remove nodes_modules
```

- z

```bash
#? yarn global list
#// alias globals="yarn global upgrade-interactive"
#// yarn global add typescript@latest
#// yarn global remove typescript
#? yarn upgrade typescript
#! LATEST GLOBAL : yarn global upgrade --latest firebase-tools@latest
```

- ⭐ know all outdated libs

```bash
yarn outdated
```

- ⭐ UPGRADE DEPs

```bash
yarn upgrade --latest
```

- know latest version

```bash
yarn info firebase versions
```

- node engine = 10

```bash
yarn info puppeteer versions

yarn add [package]@[version]
yarn add firebase@7.16.0
yarn add puppeteer@5.0.0

yarn add [package]@[tag]
```
