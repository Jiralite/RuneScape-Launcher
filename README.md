# RuneScape Launcher

This is an AppleScript that launches RuneScape with some options. This is **purely** for macOS.

It's not possible to open more than one instance of RuneScape without some sorcery. Did you know that in order to open RuneScape in another language, one has to:

1. Ensure RuneScape is not already running
2. Open the RuneScape launcher
3. Spam-click or try to click & hold the settings button in the bottom left. If you failed, you have to start again.
4. Did you get it open? Congratulations! Now, you may be met with a translucent window. Yes, you read correctly - translucent.
    <details>
      <summary>Have a look!</summary>
    <img width="531" alt="image" src="https://user-images.githubusercontent.com/33201955/156952693-a61df39a-dcaf-40d4-bf00-a78309cc104b.png">
    </details>

5. Close RuneScape
6. Open RuneScape

That's a lot of steps and it's not particularly friendly. This won't be as much if you only use one account, but many people nowadays use multiple which means closing down all your currently-running instances of RuneScape just to hop to a foreign server. In comparison to Windows, opening the settings there is so much more easier than macOS, but that's Jagex for you.

Moving forward, this AppleScript will help to solve these problems!

# Getting Started

1. [Download this repository](https://github.com/Jiralite/RuneScape-Launcher/archive/refs/heads/main.zip).
2. Open the ZIP (which will naturally extract the files for you).
3. Open the "RuneScape.applescript" file.
4. In the file, hit ⌘ ⇧ S. This will duplicate the file. You may close the original file.
5. In the duplicated file, hit ⌘ S. This will open a prompt to save.
6. Specify the name as "RuneScape". You may choose where to save it. The file format should be "Application".
7. You are done! You may safely delete everything else. Double-click your file to start RuneScape.

# Features

This script will open multiple instances of RuneScape if re-ran. Additionally, this also very easily changes your language server, even if you have a RuneScape client open.

## How do I specify which language to load RuneScape into?

All you do is rename your file!

| Name        | Language   |
| ----------- | ---------- |
| RuneScape   | English    |
| RuneScape-0 | English    |
| RuneScape-1 | German     |
| RuneScape-2 | French     |
| RuneScape-3 | Portuguese |

It's that simple. Double-clicking the file will launch into that language.
