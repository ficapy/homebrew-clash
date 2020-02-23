# homebrew-clash

### Install clash


step 1: Add tap

```bash
brew tap ficapy/clash
```

step 2: Install clash:

```bash
brew install clash
```

### Update clash

step 1: update tap

```bash
brew update
```

step 2: update clash

```bash
brew upgrade clash
```

------

### Uninstall clash

step 1: uninstall clash

```bash
brew uninstall clash
```

step 2: untap formula

```bash
brew untap ficapy/clash
```

------

### Usage

once you installed, you can run command via `clash` to run clash.

The defualt config file location is:`~/.config/clash/config.yaml`

step 1: edit the default config:

```bash
vim ~/.config/clash/config.yaml
```

step 2: run clash without starting at login.

```bash
brew services run clash
```

or run clash and register it to launch at login via:

```bash
brew services start clash
```


