# Bubbleconomy Data Pack
(Bubble + Economy) - A data pack, that adds simple economy: new currency - Bubbles (β), bank accounts, transferring money & shops.


## Table of contents
* [Compatibility](#compatibility)
* [Setting up](#setting-up)
* [Using](#using)
* [Messages](#messages)


## Compatibility
| Category             | Supported                                      | Tested         |
| -------------------- | ---------------------------------------------- | -------------- |
| Vanilla singleplayer | 1.17.x - 1.18.x                                | 1.17.1, 1.18.2 |
| Vanilla multiplayer  | 1.17.x - 1.18.x                                | 1.18.2         |
| Other                | Bukkit, Spigot, Paper, Fabric, Forge and other | Fabric         |


## Setting up
Before letting players join your server, it is recommended to tweak it first, to avoid further problems.

* `/function gamerule:bubbleconomy/default_balance/...` - Sets the amount (in Bubbles) of balance people will have when they join the server for the first time.
* `/function gamerule:bubbleconomy/player_messages/...` - Sets whether players will get messages when somebody interacts with their shops or transferring them money.
* `/function gamerule:bubbleconomy/player_shops/...` - Sets whether players can create new shops.


## Using
You can transfer money even to offline players, buy or sell stuff to them!

* `/trigger bubbleconomy_gui` - Opens the GUI where players can check their ID, their balance and transfer money to others.
* **Place an item frame with oak sign inside on a trapped chest while holding shift** - Places a shop.
* **Hold shift near a shop** - Lets other players buy/sell items and lets owners open the GUI.
* **How to use shop GUI**
  * Open the shop. You will see empty slots on the left, and 6 buttons on the right.
  * Put an item in the top left slot for it to be the item you want to buy/sell.
  * Change price using Brick; Iron and Gold ingots.
  * (Optional) Change the shell color to whatever you like more
  * Enjoy players using your shop. Unless admin disabled messages, you will get info when somebody uses your shop even if you go offline!


## Messages
Messages let you be informed when something happens to your account or your shops. They store on the server whenever you are offline, and will eventually be sent to you (inbox checks every ~30 seconds).
