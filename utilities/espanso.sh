# espanso installation
wget https://github.com/federico-terzi/espanso/releases/download/v2.1.8/espanso-debian-x11-amd64.deb
sudo dpkg -i espanso-debian-x11-amd64.deb
sudo apt install ./espanso-debian-x11-amd64.deb

# Register espanso as a systemd service (required only once)
espanso service register

# Start espanso
espanso start


# You can visit its store to download more script
#https://hub.espanso.org/

#greek-letters-improved
espanso install greek-letters-improved
espanso install foreign-thanks
espanso install encircled-numbers
espanso install espanso-fractions
espanso install double-stroke-letters
espanso install double-stroke-numbers
espanso install math
espanso install encircled-letters
espanso install calc
#Lorem ipsum sentences and paragraphs generator but in English!
espanso install english-lorem
#Lorem ipsum sentences and paragraphs generator.
espanso install lorem
# An espanso package for quickly sharing Wi-Fi passwords and connection details on macOS.
espanso install sharewifi
# A tool for generating random strings with espanso
espanso install rand-tools
# A simple package to convert clipboard content to lower case or UPPER case. (UNIX only)
espanso install lower-upper
# A package to get the code snippets from cht.sh.
espanso install cht
# A package for generating Table Topics questions
espanso install table-topics

# DevOps

# Docker compose command
espanso install docker-compose
# A espanso package to get IP address
espanso install get-ip
# A package of commands of git.
espanso install git
# Replace :ipv4 with your external IPv4 and :ip6 with your IPv6 (Linux and MacOS)
espanso install ip64
# Get a hilarious random commit message
espanso install wtc
# Penetration testing utilities and replacements
espanso install hax
# Translate gitmoji into emojis
espanso install gitmojis
# A package to include some basic emojis in espanso.
espanso install basic-emojis
# A random dad joke every time
espanso install dadjoke
# Macros for JoJo reaction GIFs imgur URLs
espanso install jojo-gifs
# Commonly used numeronyms
espanso install numeronyms
# Collection of typos fixed for English language
espanso install typofixer-en
# A few greeting snippets
espanso install greetings-english
# This package adds apostrophes to your contractions.
espanso install contractions-en
# Easy write 𝒮𝒸𝓇𝒾𝓅𝓉 𝓁ℯ𝓉𝓉ℯ𝓇𝓈
espanso install script-letters
