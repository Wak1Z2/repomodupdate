# Note
If that version is not listed here, do not download that version, as it can cause some issues.
## 1.6.6
- **Added** config entries for excluding valuables and a way to debug valuable names to the upgrade item called "*Item Resist*".
## 1.6.5
- **Fixed** an issue where the shop items wouldn't load in.
## 1.6.4
- **Fixed** an issue with the upgrade item called "*Map Player Tracker*".
## 1.6.3
- **Added** the mod called "*[TextUpgradesUIScale](https://thunderstore.io/c/repo/p/DarkSpider/TextUpgradesUIScale)*" as a dependency.
## 1.6.2
- **Fixed** the mod.
## 1.6.1
- **Fixed** a chatbox/menu activation issue with the upgrade item called "*Extra Life*".
- **Added** a new library that allows you to call "*ItemValueMultiplier*" and "*UpgradeValueIncrease*". (***Important Note: This is only useful when you are patching with prefix.***)
## 1.6.0
- **Fixed** an infinite-reviving issue with the upgrade item called "*Extra Life*".
- **Reworked** upgrade items called "*Map Enemy Tracker*" and "*Map Player Tracker*".
## 1.5.8
- **Removed** config entry number limitations.
- **Fixed** a client reviving issue with the upgrade item called "*Extra Life*".
## 1.5.5
- **Added** new upgrade items called "*Map Zoom*", "*Autoscan*", "*Item Value*" and "*Extra Life*".
- **Fixed** an issue with the upgrade item called "*Map Enemy Tracker*".
## 1.5.4
- **Fixed** a config entry called "*Price Increase Scaling*".
## 1.5.3
- **Updated** the code to support the latest version of [REPOLib](https://thunderstore.io/c/repo/p/Zehs/REPOLib).
- **Removed** the upgrade item library since [REPOLib](https://thunderstore.io/c/repo/p/Zehs/REPOLib) implements that.
## 1.5.1
- **Updated** the mod icon and the designs of the upgrade items!
- **Updated** the code to support the latest version of [REPOLib](https://thunderstore.io/c/repo/p/Zehs/REPOLib).
- **Fixed** a config entry called "*Price Increase Scaling*".
- **Added** a new upgrade item called "*Item Resist*". (**Credits to the original mod creator called "Top Sandwich" (109074579716087808)**.)
- **Added** a new config entry called "*Import Upgrades*".
- **Added** a new config entry called "*Exclude Upgrade IDs*".
- **Added** a new config entry called "*Price Multiplier*".
- **Added** a new config entry called "*Ignore Money Bags*" for the upgrade item called "*Valuable Count*".
- **Changed** the config entry called "*Scaling Factor*" for the upgrade item called "*Sprint Usage*". (***Important Note: This config entry now uses an exponential formula instead of division. Old values no longer behave the same — reset to default or adjust as needed.***)
- **Removed** a config entry called "*Display Name*".
## 1.4.8
- **Updated** the code to support the latest version of [REPOLib](https://thunderstore.io/c/repo/p/Zehs/REPOLib).
- **Updated** the descriptions.
## 1.4.5
- **Fixed** a config entry that couldn't go under 0.
## 1.4.4
- **Fixed** a potential issue.
## 1.4.3
- **Fixed** a potential issue.
## 1.4.2
- **Reverted** the method called "*GetAmount*" in the "*UpgradeItem*" class for developers.
- **Added** upgrade amount syncing between players.
- **Fixed** the config entries to work with the mod called *[REPOConfig](https://thunderstore.io/c/repo/p/nickklmao/REPOConfig)* once again.
## 1.3.9
- **Added** a new config entry called "*Sync Host Upgrades*".
- **Fixed** the config entries to work with the mod called *[REPOConfig](https://thunderstore.io/c/repo/p/nickklmao/REPOConfig)*
- **Updated** the method called "*GetAmount*" in the "*UpgradeItem*" class for developers.
- **Added** another method called "*AddConfig*" in the "*UpgradeItem*" class for developers.
## 1.3.6
- **Fixed** an issue with the upgrade item called "*Map Enemy Tracker*".
## 1.3.5
- **Updated** the config structure.
## 1.3.4
- **Fixed** an issue with setting the player color for the upgrade item called "*Map Player Tracker*".
## 1.3.3
- **Fixed** other bugs in the manager.
- **Fixed** possible bugs with the upgrade items called "*Map Enemy Tracker*" and "*Map Player Tracker*".
## 1.3.1
- **Updated** the upgrade item called "*Sprint Usage*".
- **Updated** the class called "*UpgradeItem*" for developers.
## 1.2.7
- **Fixed** issues with spawning upgrade items in the shop.
- **Updated** the descriptions of several config entries.
## 1.2.5
- **Updated** the class called "*MoreUpgradesLib*" for developers.
## 1.2.4
- **Added** a new config entry called "*Price Increase Scaling*".
- **Added** a new class called "*UpgradeItemBase*" for developers.
- **Updated** the method called "*Register*" in the "*MoreUpgradesLib*" class for developers.
- **Updated** the prices of the upgrade items.
## 1.2.2
- **Added** a new config entry called "*Display Name*".
- **Added** a new method called "*HasConfig*" in the "*UpgradeItem*" class for developers.
- **Fixed** a few config entries that weren't working properly.
- **Updated** the prices of the upgrade items.
- **Note**: *This update breaks all existing runs*.
## 1.2.0
- **Updated** the upgrade item called "*Map Player Tracker*".
- **Fixed** the issue of the confusing price multiplier for upgrade items.
- **Updated** the method called "*Register*" in the "*MoreUpgradesLib*" class for developers.
## 1.1.8
- **Updated** the price of the upgrade item called "*Map Enemy Tracker*" to be more expensive.
## 1.1.7
- **Added** a new upgrade item called "*Map Player Tracker*".
- **Removed** a config entry called "*Price*".
- **Added** new config entries called "*Minimum Price*" and "*Maximum Price*". (Note: *My fault for not looking through the code myself. That's why the prices were weird*.)
## 1.1.3
- **Added** a new field called "*onChanged*" in the "*UpgradeItem*" class for developers.
- **Added** a new method called "*GetCoreUpgradeItems*" in the "*MoreUpgradesLib*" class for developers.
- **Renamed** the upgrade item called "*Map Enemy Display*" to "*Map Enemy Tracker*" (Note: *This breaks all existing runs*.)
- **Fixed** some issues with the upgrade item called "*Map Enemy Tracker*"
## 1.1.2
- **Added** a library that allows developers to add their own upgrade items. See the *[README](https://thunderstore.io/c/repo/p/BULLETBOT/MoreUpgrades)* for more details.
- **Removed** a config entry called "*Has Max Purchase*".
## 1.0.9
- **Updated** the config entry called "*Starting Amount*" to be server-sided.
## 1.0.8
- **Added** a new upgrade item called "*Map Enemy Display*".
- **Removed** the config entries called "*Min Value*" and "*Max Value*".
- **Added** new config entries called "*Price*" and "*Starting Amount*".
- **Added** new config entries for various upgrade items.
- **Fixed** some issues with the upgrade item called "*Sprint Usage*"
- **Updated** the config structure.
- **Updated** the mod icon.
## 1.0.6
- **Updated** the code to support the latest version of [REPOLib](https://thunderstore.io/c/repo/p/Zehs/REPOLib).
## 1.0.5
- **Added** a new config entry called "*Allow Team Upgrades*".
- **Updated** the config entry called "*Enabled*", which now controls whether the upgrade item can be added to the shop instead of being removed entirely. ***Thanks for the help from the [R.E.P.O. Modding Server](https://discord.gg/vPJtKhYAFe).***
## 1.0.3
- **Fixed** the manager where it won't spawn in some levels.
## 1.0.0
- **Initial release.**