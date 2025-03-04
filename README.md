# ekkohdev/dotfiles

My dotfiles and home configuration, managed with [chezmoi](https://www.chezmoi.io/).  

Currently, only MacOS is supported. I have no plans to support other shells/platforms, or make this repo configurable for others. 

This is my personal setup, and I'm sharing it for reference only.

## Requirements

- Apple ID
- 1Password 

## Bootstrap

```sh
curl -sSL https://raw.githubusercontent.com/ekkohdev/dotfiles/main/bootosrap.sh | bash
```

### Synced Configurations

The following configurations are synced natively once signed in.

- Firefox
- Visual Studio Code

### Additional Steps

Some app configurations are not yet automated but can typically be exported/imported.

- Bartender
- Raycast
- Rectangle Pro
- Stats

## Out of Scope

The following are not managed by this repo.

- Affinity Photo / Designer
- DAW / Plugins / Modelling / Audio
- Display Drivers / Profiles
- Microsoft Office
