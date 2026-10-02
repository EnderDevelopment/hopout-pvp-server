# HopOut PvP Server

Complete standalone FiveM HopOut PvP server base with character creation, party system, and matchmaking.

## Features

- Character creation system
- Party system for team play
- Matchmaking system for various PvP modes
- Shop system for purchasing items
- Arena system for PvP matches

## Requirements

- FiveM server
- oxmysql

## Installation

1. Download the latest release from the [releases page](https://github.com/EnderDevelopment/hopout-pvp-server/releases).
2. Extract the files into your FiveM server's `resources` directory.
3. Add `start hopout_core` to your server.cfg file.
4. Ensure you have oxmysql installed and configured.

## Usage

### Character Creation

1. Connect to the server.
2. Fill out the character creation form.
3. Your character will be spawned in the lobby.

### Party System

1. Create a party using the in-game menu.
2. Invite other players to join your party.
3. Start a match together.

### Matchmaking

1. Join the matchmaking queue using the in-game menu.
2. Wait for other players to join your match.
3. The match will start automatically when enough players are found.

### Shop System

1. Visit the shop in the lobby.
2. Browse the available items.
3. Purchase items using your in-game currency.

### Arena System

1. The arena will be automatically selected when a match starts.
2. Fight against other players in the arena.
3. The match will end when one team is defeated.

## Configuration

The configuration for the HopOut PvP Server is located in the `config.lua` file. You can adjust the lobby locations, teleport zones, arena locations, and shop items to fit your server's needs.

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=hopout-pvp-server&utm_content=bottom) — describe it in one sentence and get the full source code.