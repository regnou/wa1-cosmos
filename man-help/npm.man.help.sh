
### NPM

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
