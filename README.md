
# SwayBG-Randomizer

Welcome to **SwayBG-Randomizer**!

This is a Sway-BG plugin that allows you to bind a key (or other events) to automatically swap your background image randomly. The randomizer works by checking for any pre-existing Sway PIDs and then determines whether to launch one or two instances of Sway:

1. **One instance** for a filler default background.
2. **A second instance** for swapping to a random image every time the event is triggered.

If a SwayBG instance is already running, the plugin will default to that image during each random image transition.

## Features
- **Auto Background Swap:** Automatically change your background with every event trigger.
- **Sway Integration:** Works seamlessly with Sway window manager.
- **Flexible Configuration:** Can be easily configured with keybindings or other events.
- **Random Image Selection:** Choose a random image from a specified directory.

## Installation
```bash
git clone https://github.com/Mattlavelle966/SwayBg-Randomizer-Plugin.git
sudo pacman -S lua swaybg
```
This clones this repo and installs Lua for running the helper scripts and `swaybg` for wallpaper management. Ensure your wallpapers live under `~/pics/Wallpapers/` or adjust the path in `bg-changer.lua`.

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

