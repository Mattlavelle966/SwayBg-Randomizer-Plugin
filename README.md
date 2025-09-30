
## Overview
`swaybg-randomizer` randomizes wallpapers on demand by launching or replacing `swaybg` instances. It leans on `utils.lua` to discover running processes and select random images, following the behaviour outlined in `bg-changer.lua`’s inline description.

## Installation
```bash
sudo pacman -S lua swaybg
```
This installs Lua for running the helper scripts and `swaybg` for wallpaper management. Ensure your wallpapers live under `~/pics/Wallpapers/` or adjust the path in `bg-changer.lua`.

## Usage
1. clone this repo to your chosen path.
2. `recomended` in your desktop env config Bind a key of your choice to `cd <swaybg-randomizer dir> && lua bg-changer.lua`)
3. `NOTE:` You must run lua from within the cloned repo otherwise lua wont be able to find the utils package.

## Configuration
- `wallpapersDirectory`: default is `~/pics/Wallpapers/`. Change this constant to target another folder.
- `command`: tweak flags (e.g., `--mode fill`) directly in the string if you need different `swaybg` behaviour.

## Troubleshooting
- If no wallpaper changes occur, confirm `wallpapersDirectory` exists and contains images.
- Check that `LATESTPIDS["swaybg"]` prints a PID; otherwise, `swaybg` may not be running or your sway session lacks permissions.
- Use `lua utils.lua` to verify the helper can enumerate processes on your system.

