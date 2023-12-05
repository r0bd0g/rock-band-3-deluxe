# Rock-Band-3-Deluxe (Wii Edition)

![Header Image](dependencies/header.png)

## Introduction

### Rock Band 3 Deluxe is no longer supported on Wii ###

But don't let that stop you!
This Repo contains everything you need to build a WBFS for Rock Band 3 Deluxe for Wii.

## Features
(Note: I haven't confirmed whether all of these alleged features actually work as intended.)

### Quality of Life
* Max song limit increased to 5000 (but realistically you probably can't reach 3000 songs without something breaking)
* Song select ambient noise modifier, default disabled
* New menu, "RB3DX Menu", in game for additional modifications
* Selectable song speed and track speed by 5% increments
* Selectable venue framerate up to 60fps
* Selectable venues, including a "Black Venue" with decreased load times and system load
* Fast start executable modification by ihatecompvir
* Additional intro skip scripting to load the main menu by default and automatically start loading installed content
* Press select to restart the section in practice mode
* Default difficulty on first load is Expert
* Song title always visible modifier
* Keys on Guitar unlocked without meeting requirements

### Authoring
* Autoplay modifier for chart demos
* Gameplay watermarks to deter abuse of autoplay including -
    * Disabling autosave
    * Replacing endgame percentage with "BOT"
    * Manipulating MTV Overlay
* Cycle camera menu button - available in-game when autoplay is enabled

### Additional Modifications
* Selectable colors per fret/note/sustain (It works on Pro Drums/non-Pro Keys too!)
* Huge variety of custom song sources supported
* All official exports, DLC, and RBN sorted into individual sources
* Auto activating drum modifier (no fills mode)
* Translations for Spanish, French, German
* Post processing toggle - disables/reenables post processing in-game, or in menus
* Screensaver mode - remove UI elements from menus to view the background vingette unobstructed (it will softlock your game, so be careful!)
* Nice (69%) and Awesome Choke (98-99%) callouts on solo completion
* No crowd modifier
* No whammy effect modifier
* No sustain trails modifier
* Rock Band 2 Sustain look modifier
* Twiizer
* Pro Upgrades for tons of songs from [RB3_plus](https://github.com/rjkiv/rb3_plus)
* Compatibility with [RB3Enhanced](https://github.com/RBEnhanced/RB3Enhanced). (Note: Custom sources currently don't work well in RB3Enhanced.)

## Install

Download this branch by clicking the green "Code" button above.

In the Dependencies folder, there's an exe that are needed for install, [Dot Net 6.0 Runtime](https://dotnet.microsoft.com/en-us/download/dotnet/6.0/runtime).
Dot Net is required to build an ARK file, the archive format the game needs to run. You can use default options throughout the Dot Net setup process.

Paste a copy of vanilla Rock Band 3 for Wii into the _build folder. This file MUST be named either SZBE69.wbfs (for USA version) or SZBP69.wbfs (for PAL version).
(One way to obtain this file could be to install it from disc to a harddrive using USB Loader GX, and then use Wii-Backup-Manager to transfer a wbfs from your drive to your computer.)

Run either _build_usa.bat or _build_pal.bat (depending on Rock Band 3's filename), and after several minutes, RB3DX.wbfs will be created next to the bat file.
You can copy RB3DX.wbfs to your Wii using whatever method you usually use (perhaps Wii-Backup-Manager), or drag it into Dolphin to boot.

If you need to update, first delete or move RB3DX.wbfs from the location that it was originally created (the batch file will not replace a wbfs that already exists).
Then, replace the files in the _ark in your local copy with the updated files in this repo, and run the batch file again. It should take a bit less time to build the second time around.

It is recommended to use a small USB Thumb Drive to store the game for playing on a real Wii.
If you load DX from an SD card, you will not be able to use RB3Enhanced, nor will you be able load DLC from the SD card.
If you load from a real harddrive, if you're playing online, you can expect the game to be unplayable due to severe stuttering.

## Songs

If you're adding songs to Wii as customs that never saw an official Wii DLC release, there are certain steps you must take to ensure best compatibility with many of the upgrade files in this repo.
If there are more than two drum tracks, ALWAYS collapse them down to only two tracks (including updating the songs.dta and .mid file to reflect this change), and it's recommended also that you remove any crowd audio, if present.
No further changes to the number of audio tracks in the song should be made.

The Wii Converter in the latest version of [C3 Tools](https://keepitfishy.com/rb3/c3tools/C3Tools.zip) can do these steps for you automatically.

## Included Dependencies

[Dot Net 6.0 Runtime](https://dotnet.microsoft.com/en-us/download/dotnet/6.0/runtime) - Needed to run ArkHelper

[Mackiloha](https://github.com/PikminGuts92/Mackiloha) - ArkHelper for building Rock Band 3 ARK - Superfreq for building .bmp_xbox highway images

[dtab](https://github.com/mtolly/dtab) - For serializing Rock Band dtb files
