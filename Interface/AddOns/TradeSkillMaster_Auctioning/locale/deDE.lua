-- TradeSkillMaster_Auctioning Locale - deDE
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Auctioning/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Auctioning", "deDE")
if not L then return end

-- L[""] = ""
L["12 hours"] = "12 Stunden"
L["24 hours"] = "24 Stunden"
L["48 hours"] = "48 Stunden"
L["A category contains groups with similar settings and acts like an organizational folder. You may override default settings by category (and then override category settings by group)."] = "Eine Kategorie enthält Gruppen mit ähnlichen Einstellungen und funktioniert wie ein Ordner. Sie können die Standardeinstellungen durch die der Kategorie überschreiben (und Kategorieneinstellungen durch die der Gruppe überschreiben). "
L["Add a new player to your blacklist."] = "Einen neuen Spieler Ihrer Blacklist hinzufügen." -- Needs review
L["Add a new player to your whitelist."] = "Neuen Spieler zu deiner Whitelist hinzufügen."
L["Add category"] = "Kategorie hinzufügen"
L["Added %s items to %s automatically because they contained the group name in their name. You can turn this off in the options."] = "%s Items wurden automatisch zu %s hinzugefügt da sie den Gruppennamen in ihrem namen enthalten. Du kannst diese funktion in den Optionen abschalten" -- Needs review
L["Added the following items to %s automatically because they contained the group name in their name. You can turn this off in the options."] = "Folgende Items wurden automatisch zu %s hinzugefügt da sie den Gruppennamen in ihrem namen enthalten. Du kannst diese funktion in den Optionen abschalten" -- Needs review
L["Add group"] = "Gruppe hinzufügen"
L["Add Item to New Group"] = "Füge Item zu Neuer Gruppe hinzu" -- Needs review
L["Add Item to Selected Group"] = "Füge Item zu ausgewählter Gruppe hinzu" -- Needs review
L["Add Item to TSM_Auctioning"] = "Füge Item zu TSM_Auctioning hinzu" -- Needs review
L["Add player"] = "Spieler hinzufügen"
L["Add/Remove"] = "Hinzufügen/Entfernen" -- Needs review
L["Add/Remove Groups"] = "Hinzufügen/Entfernen von Gruppen"
L["Add/Remove Items"] = "Hinzufügen/Entfernen von Gegenständen"
L["Advanced"] = "Erweitert" -- Needs review
L["Advanced Price Settings (Reset Method)"] = "Erweiterte Preiseinstellungen (Reset Methode)" -- Needs review
L["A group contains items that you wish to sell with similar conditions (stack size, fallback price, etc).  Default settings may be overridden by a group's individual settings."] = "Eine Gruppe enthält Gegenstände, die Sie unter ähnlichen Bedingungen (Stapelgröße, Rückfallspreis, usw.) verkaufen möchten. Standardbedingungen können durch die Einstellungen einer Gruppe überschrieben werden. "
L["All auctions of this duration and below will be canceled when you press the \"Cancel Low Duration Auctions\" button"] = "All auktionen dieser Laufzeit und darunter werden abgebrochen wenn du den \"Breche Auktionen mit kurzer Laufzeit\" Knopf drückst" -- Needs review
L["ALT"] = "ALT"
L["Any auctions at or below the selected duration will be ignored. Selecting \"<none>\" will cause no auctions to be ignored based on duration."] = "Alle Auktionen mit oder unterhalb der gewählten Autionsdauer werden ignoriert. Die Auswahl \"<Keine>\" bewirkt, dass Auktionen niemals aufgrund der Auktionsdauer ignoriert werden." -- Needs review
L["Are you SURE you want to delete all the groups in this category?"] = "Bist du dir SICHER das du alle Gruppen dieser Kategorie löschen willst?" -- Needs review
L["Are you sure you want to delete the selected profile?"] = "Bist du sicher, daß du das ausgewählte Profil löschen möchtest?"
L["Are you SURE you want to delete this category?"] = "Bist du SICHER, daß du diese Kategorie löschen möchtest?"
L["Are you SURE you want to delete this group?"] = "Bist du SICHER, daß du diese Gruppe löschen möchtest?"
L["At fallback price and not undercut."] = "Rückfallpreis und nicht unterboten." -- Needs review
L["Auction Buyout"] = "Auktionsaufkauf" -- Needs review
L["Auction Buyout (Stack Price):"] = "Auktionsaufkauf (Stack Preis)" -- Needs review
L["Auction Defaults"] = "Auktionen - Standardeinstellungen"
L["Auction has been bid on."] = "Auf diese Auktion wurde geboten" -- Needs review
L["Auctioning Group:"] = "Auktionsgruppe" -- Needs review
L["Auctioning Groups/Options"] = "Auktionen Gruppen/Optionen"
-- L["Auctioning has found %s group(s) with an invalid threshold/fallback. Check your chat log for more info. Would you like Auctioning to fix these groups for you?"] = ""
L["Auctioning will follow the 'Advanced Price Settings' when the market goes below %s."] = "Auctioning verwendet die 'Erweiterten Preiseinstellungen', wenn der Marktpreis unter %s fällt."
L["Auctioning will never post your auctions for below %s."] = "Auctioning erstellt niemals Auktionen unter %s."
L["Auctioning will post at %s when you are the only one posting below %s."] = "Auktionen werden zum Preis von %s erstellt, wenn Du der einzige bist, der unter dem Preis von %s liegt."
-- L["Auctioning will reset items where you can make a profit of at least %s per item by buying at most %s items for a maximum of %s, paying no more than %s for any single item."] = ""
L["Auctioning will undercut your competition by %s. When posting, the bid of your auctions will be set to %s percent of the buyout."] = "Auctioning unterbietet deine Konkurrenz um %s. Beim Erstellen wird das Gebot auf %s Prozent des Sofortkaufpreises gesetzt."
L["Auctions"] = "Auktionen" -- Needs review
L["Auctions will be posted at %s when the market goes below your threshold."] = "Auktionen werden für %s eingestellt, wenn der Marktpreis unter deinen Schwellenwert fällt."
L["Auctions will be posted at your fallback price of %s when the market goes below your threshold."] = "Auktionen werden mit deinem Rückfallpreis von %s erstellt, wenn der Marktpreis unter deinen Schwellenwert fällt."
L["Auctions will be posted at your threshold price of %s when the market goes below your threshold."] = "Auktionen werden für deinen Schwellenpreis von %s erstellt, wenn der Marktpreis unter deinen Schwellenwert fällt."
L["Auctions will be posted for %s hours in stacks of %s. A maximum of %s auctions will be posted."] = "Auktionen werden für %s Stunden in Stapeln von %s erstellt. Es werden maximal %s Auktionen erstellt."
L["Auctions will be posted for %s hours in stacks of up to %s. A maximum of %s auctions will be posted."] = "Auktionen werden für %s Stunden in Stapeln von bis zu %s erstellt. Es werden maximal %s Auktionen erstellt."
L["Auctions will not be posted when the market goes below your threshold."] = "Es werden keine Auktionen erstellt wenn der Marktpreis unter deinen Schwellenwert fällt."
L["Beginner"] = "Einsteiger"
L["Bid:"] = "Bieten" -- Needs review
L["Bid percent"] = "Gebot Prozent"
L["Blacklist"] = "Blacklist" -- Needs review
L["(blacklisted)"] = "(blacklisted)" -- Needs review
L["Blacklists allows you to undercut a competitor no matter how low their threshold may be. If the lowest auction of an item is owned by somebody on your blacklist, your threshold will be ignored for that item and you will undercut them regardless of whether they are above or below your threshold."] = "Blacklists erlauben Ihnen einen Konkurenten zu unterbieten, egal wie niedrig deren Schwellenpreis ist. Wenn die niedriste Auktion eines Gegenstandes jemandem gehört, der sich auf Ihrer Blacklist befindet, werden Sie die Autionen dieses Konkurenten unterbieten, unabhängig davon ob der Preis über oder unter Ihrem normalen Schwellenpreis liegt." -- Needs review
L["Block Auctioneer while scanning"] = "Blockiere Auctionen während des scannens." -- Needs review
L["Buyout"] = "Sofort-Kauf" -- Needs review
-- L["Buyout:"] = ""
L["Cancel"] = "Abbrechen"
-- L["Cancel ALL Current Auctions"] = ""
L["Cancel Auctions"] = "Auktionen abbrechen" -- Needs review
-- L["Cancel Auctions Matching Filter"] = ""
L["Cancel auctions with bids"] = "Brich Auktionen mit Geboten ab."
L["Cancel Filter"] = "Filter entfernen" -- Needs review
L["Canceling"] = "Abbrechen"
L["Canceling all auctions."] = "Alle Auktionen abbrechen" -- Needs review
-- L["Canceling auction which you've undercut."] = ""
-- L["Canceling %s / %s"] = ""
-- L["Canceling to repost at higher price."] = ""
-- L["Canceling to repost at reset price."] = ""
-- L["Cancel Low Duration Auctions"] = ""
-- L["Cancels auctions you've been undercut on according to the rules setup in Auctioning."] = ""
L["Cancel Scan Finished"] = "Abbruch Scan abgeschlossen" -- Needs review
L["Cancel to repost higher"] = "Abbrechen um höher wieder einzustellen" -- Needs review
L["Categories / Groups"] = "Kategorien / Gruppen"
L["Category name"] = "Kategoriename" -- Needs review
L["Category Overrides"] = "Kategorie-Überschreibungen"
-- L["Cheapest auction below threshold."] = ""
-- L["Check this box to include this group in the scan."] = ""
-- L["Click on the \"Fix\" button to have Auctioning turn this group into a category and create appropriate groups inside the category to fix this issue. This is recommended unless you'd like to fix the group yourself. You will only be prompted with this popup once per session."] = ""
-- L["Click to reset this item to this target price."] = ""
-- L["Click to show auctions for this item."] = ""
-- L["Common Search Term"] = ""
L["Completely disables this group. This group will not be scanned for and will be effectively invisible to Auctioning."] = "Deaktiviert diese Gruppe vollständig. Diese Gruppe wird nicht gescanned ist wiird wähend der Auktionsserstellung ignoriert." -- Needs review
L["Copy From"] = "Kopieren von"
L["Copy the settings from one existing profile into the currently active profile."] = "Kopiere die Konfiguration eines existierenden Profils in das aktuelle Profil."
-- L["Could not find item's group."] = ""
L["Create a new empty profile."] = "Erstelle neues leeres Profil."
L["Create Category / Group"] = "Erstelle Kategorie / Gruppe"
L["Create Macro and Bind ScrollWheel (with selected options)"] = "Erstelle das Makro und lege es auf das Mausrad (mit den gewählten Optionen)"
L["CTRL"] = "STRG"
L["Current Profile:"] = "Aktuelles Profil:"
L["Custom market reset price. If the market goes below your threshold, items will be posted at this price."] = "Eigener Reset-Preis. Wenn der Markt unter deinen Schwellenwert fällt, werden Auktionen mit diesem Preis erstellt."
L["Custom Reset Price (gold)"] = "Eigener Reset-Preis (Gold)"
L["Custom Value"] = "Eigener Wert"
L["Data Imported to Group: %s"] = "Daten in Gruppe %s importiert" -- Needs review
L["Default"] = "Standard"
L["Delete"] = "Lösche"
-- L["Delete All Groups In Category"] = ""
-- L["Delete all groups inside this category. This cannot be undone!"] = ""
L["Delete a Profile"] = "Lösche ein Profil"
-- L["Delete category"] = ""
L["Delete existing and unused profiles from the database to save space, and cleanup the SavedVariables file."] = "Lösche ungenutzte Profile aus der Datenbank und räume die SavedVariables-Datei auf, um Speicherplatz zu sparen."
L["Delete group"] = "Lösche Gruppe"
L["Delete this category, this cannot be undone!"] = "Lösche diese Kategorie (kann nicht rückgängig gemacht werden!)"
L["Delete this group, this cannot be undone!"] = "Lösche diese Gruppe (kann nicht rückgängig gemacht werden!)"
L["Determines which order the group / category settings tabs will appear in."] = "Bestimmt in welcher Reihenfolge die Reiter für Gruppen/Kategorieeinstellungen angezeigt werden." -- Needs review
L["Did not post %s because your fallback (%s) is invalid. Check your settings."] = "Auktion für %s wurde nicht erstellt, da Ihr Rückfallpreis(%s) ungültig ist. Prüfen Sie Ihre Einstellungen." -- Needs review
L["Did not post %s because your fallback (%s) is lower than your threshold (%s). Check your settings."] = "Auktion %s wurde nicht erstellt, weil der Rückfallpreis(%s) unterhalb des Schwellenpreises (%s) liegt. Prüfen Sie Ihre Einstellungen." -- Needs review
L["Did not post %s because your threshold (%s) is invalid. Check your settings."] = "Auktion für %s wurde nicht erstellt, da Ihr Schwellenpreis(%s) ungültig ist. Prüfen Sie Ihre Einstellungen." -- Needs review
-- L["Disable All"] = ""
L["Disable auto cancelling"] = "Deaktiviere das automatische Abbrechen"
L["Disable automatically cancelling of items in this group if undercut."] = "Deaktiviere das automatische Abbrechen von Auktionen in dieser Gruppe, wenn sie unterboten werden."
L["Disable posting and canceling"] = "Deaktiviere Erstellen und Abbrechen von Auktionen" -- Needs review
-- L["Disables canceling of auctions which can not be reposted (ie the market price is below your threshold)."] = ""
L["Done Canceling"] = "Abbrechen beendet"
--[==[ L[ [=[Done Posting

Total value of your auctions: %s
Incoming Gold: %s]=] ] = "" ]==]
--[==[ L[ [=[Done Scanning!

Could potentially reset %d items for %s profit.]=] ] = "" ]==]
L["Don't Import Already Grouped Items"] = "Importiere keine Gegenstände, die bereits gruppiert sind." -- Needs review
L["Don't Post Items"] = "Erstelle keine Auktionen" -- Needs review
L["Down"] = "Runter"
-- L["Duration"] = ""
-- L["Edit Post Price"] = ""
-- L["Enable All"] = ""
L["Enable sounds"] = "Aktiviere Soundeffekte."
-- L["Enter a filter into this box and click the button below it to cancel all of your auctions that contain that filter (without scanning)."] = ""
-- L["Error with scan. Scanned item multiple times unexpectedly. You can try restarting the scan. Item:"] = ""
L["Existing Profiles"] = "Existierende Profile"
L["Export"] = "Export"
L["Export Group Data"] = "Exportiere Gruppendaten"
L["Exports the data for this group. This allows you to share your group data with other TradeSkillMaster_Auctioning users."] = "Exportiert die Daten for diese Gruppe. Dies erlaubt Ihnen Ihre Gruppendaten mit anderen TradeSkillMaster_Auctioning Benutzern zu teilen."
-- L["Fallback:"] = ""
L["Fallback price"] = "Rückfall-Preis"
L["First Tab in Group / Category Settings"] = "Erster Reiter in den Gruppen/Kategorie-Einstellungen" -- Needs review
L["Fixed Gold Amount"] = "Fester Wert"
-- L["Fixed invalid groups."] = ""
-- L["Fix (Recommended)"] = ""
L["General"] = "Allgemein"
L["General Price Settings (Undercut / Bid)"] = "Allgemeine Preiseinstellungen (Unterbieten / Bieten)"
L["General Settings"] = "Allgemeine Optionen"
-- L["Group:"] = ""
L["Group/Category named \"%s\" already exists!"] = "Gruppe/Kategorie mit dem Namen \"%s\" existiert bereits!" -- Needs review
L["Group Data"] = "Gruppendaten"
L["Group name"] = "Gruppenname" -- Needs review
L["Group named \"%s\" already exists! Item not added."] = "Eine Gruppe mit dem Namen \"%s\" existiert bereits! Item wurde nicht hinzugefügt." -- Needs review
L["Group named \"%s\" does not exist! Item not added."] = "Eine Gruppe mit dem Namen \"%s\" existiert nicht! Item wurde nicht hinzugefügt." -- Needs review
L["Group Overrides"] = "Gruppen-Überschreibungen"
L["Groups in this Category:"] = "Gruppen in dieser Kategorie:"
L["Help"] = "Hilfe"
L["Hide advanced options"] = "Verstecke erweiterte Optionen"
L["Hide help text"] = "Verstecke Hilfetext"
L["Hide poor quality items"] = "Verstecke graue Items" -- Needs review
L["Hides advanced auction settings. Provides for an easier learning curve for new users."] = "Versteckt erweiterte Auktionsoptionen. Hilft für eine erleichterte Bedienung für neue Benutzer." -- Needs review
L["Hides all poor (gray) quality items from the 'Add items' pages."] = "Versteckt alle grauen Items in den \"Item hinzufügen\"-Seiten" -- Needs review
L["Hides auction setting help text throughout the options."] = "Versteckt Hilfstexte in den Optionen."
L["How long auctions should be up for."] = "Wielange Auktionen dauern sollen."
L["How low the market can go before an item should no longer be posted. The minimum price you want to post an item for."] = "Wie tief der Markt fallen darf bevor eine Auktion nichtmehr erstellt werden soll. Der Minimalpreis den du willst." -- Needs review
L["How many auctions at the lowest price tier can be up at any one time."] = "Wieviele Auktionen mit dem geringsten Preis gleichzeitig aktiv sein können." -- Needs review
L["How many items should be in a single auction, 20 will mean they are posted in stacks of 20."] = "Wieviele Items sollen pro Auktion versteigert werden. 20 bedeutet das sie als Stacks (Paket)  von 20 einzelnen Items ins Auktionshaus gesetzt werden." -- Needs review
L[ [=[How much of a difference between auction prices should be allowed before posting at the second highest value.

For example. If Apple is posting Runed Scarlet Ruby at 50g, Orange posts one at 30g and you post one at 29g, then Oranges expires. If you set price threshold to 30% then it will cancel yours at 29g and post it at 49g next time because the difference in price is 42% and above the allowed threshold.]=] ] = [=[Wie groß darf die Differenz der Auktionspreise zwischen ihrer eigenen Auktion und der eines (teureren) Konkurenten liegen.
Zum Beispiel: Wenn Hans einen Infernorubin für 50g ins Auktionshaus setzt, Fritz erbenfalls einen für 30g und Sie selbst für 29g. Dann läuft die Auktion von Fritz aus. Wenn Sie nun die Preisschwelle auf 30% gesetzt haben, dann wird TradeSkillMaster ihre Auktion abbrechen und für 49g erneut ins Auktionshaus stellen, weil der Preisunterschied zu hoch war (nämlich 42%).]=] -- Needs review
L["How much to undercut other auctions by, format is in \"#g#s#c\" but can be in any order, \"50g30s\" means 50 gold, 30 silver and so on."] = "Um wieviel sollen die Konkurrenten unterboten werden. Bitte geben Sie dies in dem Format \"#g#s#c\" an. Zum Beispiel \"50g30s\" bedeutet das ihr Konkurrent um 50 Gold und 30 Silber unterboten wird." -- Needs review
-- L["If all items in this group have the same phrase in their name, use this phrase instead to speed up searches. For example, if this group contains only glyphs, you could put \"glyph of\" and Auctioning will search for that instead of each glyph name individually. Leave empty for default behavior."] = ""
-- L["If checked, the items in this group will be included when running a reset scan and the reset scan options will be shown."] = ""
-- L["If checked, will cancel auctions that can be reposted for a higher amount (ie you haven't been undercut and the auction you originally undercut has expired)."] = ""
-- L["If enabled, when the lowest auction is by somebody on your whitelist, it will post your auction at the same price. If disabled, it won't post the item at all."] = ""
-- L["If enabled, when you create a new group, your bags will be scanned for items with names that include the name of the new group. If such items are found, they will be automatically added to the new group."] = ""
L[ [=[If the market price is above fallback price * maximum price, items will be posted at the fallback * maximum price instead.

Effective for posting prices in a sane price range when someone is posting an item at 5000g when it only goes for 100g.]=] ] = [=[Wenn der Marktpreis über dem Rückkehrpreis liegt, dann werden Ihre Items zum Rückkehrpreis ins Auktionshaus gesetzt.
Dies findet zum Beispiel dann Anwendung wenn ein Konkurrent ein Item für 5000g ins Auktionshaus stellt, dass Item aber in Wirklichkeit nur ca. 100g Wert ist.]=] -- Needs review
-- L["If you are using a % of something for threshold / fallback, every item in a group must evalute to the exact same amount. For example, if you are using % of crafting cost, every item in the group must have the same mats. If you are using % of auctiondb value, no items will ever have the same market price or min buyout. So, these items must be split into separate groups."] = ""
L["If you don't have enough items for a full post, it will post with what you have."] = "Wenn Sie nicht genug Items für eine vollständige Auktion haben, wird es das versteigern was Sie haben." -- Needs review
L["Ignore"] = "Ignorieren" -- Needs review
L["Ignore low duration auctions"] = "Ignoriere Auktionen mit niedriger Auktiondauer" -- Needs review
L["Ignore stacks over"] = "Ignoriere Stapelgrößen oberhalb von"
L["Ignore stacks under"] = "Ignoriere Stapelgrößen unterhalb von"
L["Import Auctioning Group"] = "Importiere Auktionsgruppen" -- Needs review
L["Import Group Data"] = "Importiere Gruppendaten"
-- L["Include in reset scan"] = ""
L["Info"] = "Info" -- Needs review
L["Invalid category name."] = "Ungültiger Kategorienname."
L["Invalid group name."] = "Ungültiger Gruppenname."
L["Invalid money format entered, should be \"#g#s#c\", \"25g4s50c\" is 25 gold, 4 silver, 50 copper."] = "Ungültiges Währungsformat entdeckt, sollte sein \"#g#s#k\", \"25g4s50k\" ist 25 Gold, 4 Silber, 50 Kupfer." -- Needs review
L["Invalid percent format entered, should be \"#%\", \"105%\" is 105 percent."] = "Ungültiges prozentuales Format eingegeben. Es sollte so aussehen: \"#%\". zB \"105%\" bedeutet 105 Prozent"
-- L["Invalid scan data for item %s. Skipping this item."] = ""
-- L["Invalid search term for group %s. Searching for items individually instead."] = ""
L["Invalid seller data returned by server."] = "Ungültige Verkäufer Daten wurden vom Server gesendet" -- Needs review
L["Item"] = "Gegenstand" -- Needs review
L["Item failed to add to group."] = "Item konnte nicht zur Gruppe hinzugefügt werden." -- Needs review
L["Item/Group is invalid."] = "Gegenstand/Gruppe ist ungültig" -- Needs review
L["Items in this group:"] = "Items in dieser Gruppe:" -- Needs review
L["Items in this group will not be posted or canceled automatically."] = "Es werden keine Auktionen für Gegenstände in dieser Gruppe automatisch erstellt oder abgebrochen."
L["Items not in any group:"] = "Items die keiner Gruppe angehören:" -- Needs review
L["Items that are stacked beyond the set amount are ignored when calculating the lowest market price."] = "Items die zu größeren Pakten (Stacks) als das gesetzte Limit gestapelt sind werden bei der Berechnung des niedrigsten Marktpreises ignoriert." -- Needs review
-- L["Log Info:"] = ""
-- L["Long (12 hours)"] = ""
L["long (2 - 12 hours)"] = "Lang (2 - 12 Stunden)" -- Needs review
-- L["Lowest auction by whitelisted player."] = ""
-- L["Lowest Buyout"] = ""
-- L["Lowest Buyout:"] = ""
L["Macro created and keybinding set!"] = "Macro erstellt und Tastenbelegung gesetzt!" -- Needs review
L["Macro Help"] = "Macro Hilfe"
-- L["Make another after this one."] = ""
L["Management"] = "Verwaltung" -- Needs review
L["% Market Value"] = "% des Marktwerts" -- Needs review
-- L["Match whitelist prices"] = ""
L["Maximum amount already posted."] = "Maximale Menge bereits erstellt." -- Needs review
L["Maximum price"] = "Maximaler Preis" -- Needs review
L["Maximum price gap"] = "Größte Preislücke" -- Needs review
L["Maximum Price Settings (Fallback)"] = "Maximale Preis Einstellung (Rückkehrpreis)" -- Needs review
-- L["Max price per item"] = ""
-- L["Max quantity to buy"] = ""
-- L["Max reset cost"] = ""
-- L["Max Scan Retries (Advanced)"] = ""
-- L["Medium (2 hours)"] = ""
L["medium (30 minutes - 2 hours)"] = "Mittel (30 Minuten - 2 Stunden)" -- Needs review
L["Minimum Price Settings (Threshold)"] = "Einstellung für das günstigste Angebot (Preisschwelle)" -- Needs review
-- L["Min reset profit"] = ""
L["Modifiers:"] = "Modifikator" -- Needs review
-- L["Must wait for scan to finish before starting to reset."] = ""
-- L["Name of New Group to Add Item to:"] = ""
L["Name of the new category, this can be whatever you want and has no relation to how the category itself functions."] = "Name der neuen Kategorie, die Sie vollkommen frei benennen können. Der Name hat keinen Bezug auf deren Funktionsweise." -- Needs review
L["Name of the new group, this can be whatever you want and has no relation to how the group itself functions."] = "Name der neuen Gruppe, die Sie vollkommen frei benennen können. Der Name hat keinen Bezug auf deren Funktionsweise." -- Needs review
L["New"] = "Neu" -- Needs review
L["New category name"] = "Neuer Kategorie-Name" -- Needs review
L["New group name"] = "Neuer Gruppen-Name" -- Needs review
-- L["No Items to Reset"] = ""
L["No name entered."] = "Kein Name eingegeben." -- Needs review
L["<none>"] = "<keine>" -- Needs review
-- L["Not canceling auction at reset price."] = ""
-- L["Not canceling auction below threshold."] = ""
-- L["Not enough items in bags."] = ""
L["%% of %s"] = "%% von %s"
L["Options"] = "Optionen" -- Needs review
L["Overrides"] = "Überschreibung" -- Needs review
L["Per auction"] = "Pro Auktion" -- Needs review
L["Percentage of the buyout as bid, if you set this to 90% then a 100g buyout will have a 90g bid."] = "Prozentsatz des Sofortkaufpreises als Gebotspreis, wenn du diesen auf 90% einstellst, dann wird ein Sofortkaufpreis von 100g einen Gebotspreis von 90g haben." -- Needs review
L["Player name"] = "Spielername" -- Needs review
L["Plays the ready check sound when a post / cancel scan is complete and items are ready to be posting / canceled (the gray bar is all the way across)."] = "Spielt den \"Bereitschaftscheck\"-Soundeffekt wenn ein Erstellen/Abbrechen Scan abgeschlossen wurde und Gegenstände zum Erstellen/ Abbrechen vorhanden sind (Der graue Balken ist komplett durchgelaufen). " -- Needs review
-- L["Please don't move items around in your bags while a post scan is running! The item was skipped to avoid an incorrect item being posted."] = ""
-- L["Post"] = ""
L["Post at Fallback"] = "Zum Rückfall-Preis erstellen." -- Needs review
L["Post at Threshold"] = "Zum Schwellenpreis erstellen." -- Needs review
-- L["Post Auctions"] = ""
L["Post cap"] = "Auktionsgrenze" -- Needs review
-- L["Posting at fallback."] = ""
-- L["Posting at reset price."] = ""
-- L["Posting at whitelisted player's price."] = ""
-- L["Posting at your current price."] = ""
-- L["Posting %s / %s"] = ""
-- L["Posting this item."] = ""
-- L["Post Scan Finished"] = ""
L["Post Settings (Quantity / Duration)"] = "Auktionsseinstellungen" -- Needs review
-- L["Posts items on the auction house according to the rules setup in Auctioning."] = ""
L["Post time"] = "Auktionszeit" -- Needs review
-- L["Price gap too high."] = ""
L["Price Per Item"] = "Preis pro Item" -- Needs review
-- L["Price Per Stack"] = ""
-- L["Price resolution"] = ""
L["Price threshold"] = "Preisschwelle" -- Needs review
L["Price to fallback too if there are no other auctions up, the lowest market price is too high."] = "Dies ist ihr Rückfallwert falls keine anderen Auktionen vorhanden sind und der niedrigste Marktpreis zu hoch ist." -- Needs review
-- L["Processing Items..."] = ""
L["Profiles"] = "Profile" -- Needs review
-- L["Profit:"] = ""
-- L["Profit Per Item"] = ""
-- L["Quantity (Yours)"] = ""
L["Rename"] = "Umbenennen" -- Needs review
L["Rename this category to something else!"] = "Diese Kategorie in etwas anderes umbenennen!" -- Needs review
L["Rename this group to something else!"] = "Diese Gruppe in etwas anderes umbenennen!" -- Needs review
-- L["Reset Auctions"] = ""
-- L["Reset Method"] = ""
L["Reset Profile"] = "Profil zurücksetzen"
-- L["Reset Scan Finished"] = ""
-- L["Reset Scan Settings"] = ""
-- L["Resets the price of items according to the rules setup in Auctioning by buying other's auctions and canceling your own as necessary."] = ""
L["Reset the current profile back to its default values, in case your configuration is broken, or you simply want to start over."] = "Setzt das derzeitige Profil auf die Standardwerte zurück, für den Fall, dass Ihre Konfiguration Fehler aufweist oder Sie einfach wieder von Grund auf beginnen wollen." -- Needs review
-- L["Return to Summary"] = ""
-- L["Right-Click to add %s to your friends list."] = ""
-- L["Right click to do a custom cancel scan."] = ""
-- L["Right click to do a custom post scan."] = ""
-- L["Right click to do a custom reset scan."] = ""
L["Right click to override this setting."] = "Rechtsklick um diese Einstellung zu überschreiben." -- Needs review
L["Right click to remove the override of this setting."] = "Rechtsklick um die Überschreibung rückgängig zu machen." -- Needs review
-- L["Running Scan..."] = ""
-- L["Save New Price"] = ""
L["Scanning"] = "Scanne"
-- L["Scanning Item %s / %s"] = ""
L["ScrollWheel Direction (both recommended):"] = "Mausradrichtungen (beide empfohlen)"
L["Select Matches:"] = "Wähle Übereinstimmungen:"
L["Selects all items in either list matching the entered filter. Entering \"Glyph of\" will select any item with \"Glyph of\" in the name."] = "Wähle alle Gegenstände einer Liste aus, die dem eingegeben Filter entsprechen. Die Eingabe von \"Glyphe\" wird jeden Gegenstand auswählen, dessen Name \"Glyphe\" enthält." -- Needs review
L["Seller"] = "Verkäufer" -- Needs review
-- L["Seller name of lowest auction for item %s was not returned from server. Skipping this item."] = ""
L["Set fallback as a"] = "Den Rückfallpreis festsetzen als" -- Needs review
-- L["Set max reset cost as a"] = ""
-- L["Set min reset price as a"] = ""
L["Set threshold as a"] = "Den Schwellenwert festsetzen als" -- Needs review
L["SHIFT"] = "UMSCHALTTASTE"
-- L["Shift-Right-Click to show the options for this item's Auctioning group."] = ""
-- L["Short (30 minutes)"] = ""
L["short (less than 30 minutes)"] = "Kurz (weniger als 30 Minuten)" -- Needs review
-- L["Show All Auctions"] = ""
L["Show group name in tooltip"] = "Gruppenname im Tooltip anzeigen" -- Needs review
-- L["Show Item Auctions"] = ""
-- L["Show Log"] = ""
L["Shows the name of the group an item belongs to in that item's tooltip."] = "Zeigt den Namen der Gruppe, zu der ein Gegenstand gehört, im Tooltip des Gegenstandes an." -- Needs review
L["%s item(s) to buy/cancel"] = "%s item(s) zum kaufen/abbrechen" -- Needs review
L["Skip"] = "Überspringen" -- Needs review
L["Skip Item"] = "Überspringen" -- Needs review
-- L["Smart canceling"] = ""
-- L["Smart group creation"] = ""
L["Stack Size"] = "Stapelgröße" -- Needs review
-- L["Start Scan of Selected Groups"] = ""
-- L["Stop Scan"] = ""
-- L["Target Price"] = ""
-- L["Target Price:"] = ""
L[ [=[The below are fallback settings for groups, if you do not override a setting in a group then it will use the settings below.

Warning! All auction prices are per item, not overall. If you set it to post at a fallback of 1g and you post in stacks of 20 that means the fallback will be 20g.]=] ] = [=[Untenstehend finden sie die Grundeinstellungen für Gruppen. Diese werden verwendet, falls keine spezifischen Einstelungen für eine Gruppe festgelegt wurden.

Warnung! Alle Auktionspreise beziehen sich auf einen einzelnen Gegenstand nicht auf die Gesamtmenge. Wenn Sie festlegen Auktionen zu einem Rückfallpreis von 1g zu erstellen und Autionen in Stapeln von 20 erstellen, bedeutet das, dass der Rückfallpreis 20g sein wird.]=] -- Needs review
L["The data you are trying to import is invalid."] = "Die Daten, die Sie versuchen zu importieren, sind ungültig." -- Needs review
-- L["The maximum amount that you want to spend in order to reset a particular item. This is the total amount, not a per-item amount."] = ""
-- L["The minimum profit you would want to make from doing a reset. This is a per-item price where profit is the price you reset to minus the average price you spent per item."] = ""
L["The player \"%s\" is already on your blacklist."] = "Der Spieler \"%s\" befindet sich bereits auf Ihrer Blacklist." -- Needs review
L["The player \"%s\" is already on your whitelist."] = "Der Spieler \"%s\" befindet sich bereits of Ihrer Whitelist." -- Needs review
L["There are two ways of making clicking the Post / Cancel Auction button easier. You can put %s and %s in a macro (on separate lines), or use the utility below to have a macro automatically made and bound to scrollwheel for you."] = "Es gibt zwei Möglichkeiten Ihnen das Klicken von \"Erstelle Auktion/Auktion abbrechen\" zu erleichtern. Sie können %s und %s in ein Makro einfügen (in seperate Zeilen), oder die untenstehende Funktion verwenden um automatisch ein Macro zu erstellen und es Ihrem Mausrad zuzuweisen." -- Needs review
-- L["This controls how many times Auctioning will retry a query before giving up and moving on. Each retry takes about 2-3 seconds."] = ""
-- L["This determines what size range of prices should be considered a single price point for the reset scan. For example, if this is set to 1s, an auction at 20g50s20c and an auction at 20g49s45c will both be considered to be the same price level."] = ""
L["This dropdown determines what Auctioning will do when the market for an item goes below your threshold value. You can either not post the items or post at your fallback/threshold/a custom value."] = "Diese Auswahlliste bestimmt wie Autionen gehandhabt werden, wenn der Marktpreis eines Gegenstandes unterhalb Ihres Schwellenpreises liegt. Sie haben die Wahl sie nicht zu erstellen oder sie zu Ihrem Rückfall-/Schwellen- oder einem benutzerdefinierten Wert erstellen zu lassen." -- Needs review
L["This feature can be used to import groups from outside of the game. For example, if somebody exported their group onto a blog, you could use this feature to import that group and Auctioning would create a group with the same settings / items."] = "Dieses Option can benutzt werden um Gruppen von ausserhalb des Spiels zu importieren. Wenn zum Beispiel jemand seine exportieren Gruppendaten auf einem Blog veröffentlicht können Sie sie mit dieser Option importieren und Auctioning erstellt Ihnen Gruppen mit demselben Namen und denselben Einstellungen." -- Needs review
-- L["This is the maximum amount you want to pay for a single item when reseting."] = ""
-- L["This is the maximum number of items you're willing to buy in order to perform a reset."] = ""
-- L["This item does not have any seller data."] = ""
-- L["This item is already in the \"%s\" Auctioning group."] = ""
-- L["This item will not be included in the reset scan."] = ""
-- L["Threshold:"] = ""
-- L["Time Left"] = ""
-- L["Toggle this box to enable / disable all groups in this category."] = ""
-- L["Total Cost"] = ""
-- L["TSM_Auctioning Group to Add Item to:"] = ""
L["<Uncategorized Groups>"] = "<Unkategorisierte Gruppen>"
L["Uncategorized Groups:"] = "Unkategorisierte Gruppen" -- Needs review
L["Undercut by"] = "Unterbieten um" -- Needs review
-- L["Undercut by whitelisted player."] = ""
-- L["Undercutting competition."] = ""
L["Up"] = "Hoch" -- Needs review
L["Use per auction as cap"] = "Den \"Pro Auktion\"-Wert als Grenze verwenden" -- Needs review
-- L["Use the checkboxes to the left to select which groups you'd like to include in this scan."] = ""
-- L["When posting and canceling, ignore auctions with more than %s item(s) or less than %s item(s) in them. Ignoring the lowest auction if the price difference between the lowest two auctions is more than %s."] = ""
-- L["When posting, ignore auctions with more than %s items or less than %s items in them. Ignoring the lowest auction if the price difference between the lowest two auctions is more than %s. Items in this group will not be canceled automatically."] = ""
-- L["Which group in TSM_Auctioning to add this item to."] = ""
L["Whitelist"] = "Whitelist" -- Needs review
L["(whitelisted)"] = "(whitelisted)" -- Needs review
L["Whitelists allow you to set other players besides you and your alts that you do not want to undercut; however, if somebody on your whitelist matches your buyout but lists a lower bid it will still consider them undercutting."] = "Whitelists erlauben Ihnen andere Spieler, neben Ihnen und Ihren Zweitcharakteren, zu bestimmen, die Sie nicht unterbieten wollen. Sollte aber jemand der sich auf Ihrer Whitelist befindet, zwar zum gleichen Sofortkaufspreis, allerdings zu einem niedrigeren Gebotspreis Autionen erstellen, wird er von der Whitelist-Regel ausgenommen." -- Needs review
L["Will bind ScrollWheelDown (plus modifiers below) to the macro created."] = "Belegt MausradRunterscrollen (plus gewähltem Modifikator) mit dem erstellten Macro." -- Needs review
L["Will bind ScrollWheelUp (plus modifiers below) to the macro created."] = "Belegt MausradHochscrollen (plus gewähltem Modifikator) mit dem erstellten Macro." -- Needs review
L["Will cancel auctions even if they have a bid on them, you will take an additional gold cost if you cancel an auction with bid."] = "Bricht Auktionen ab, auch wenn bereits ein Gebot besteht. Es Ihnen entstehen zusätzliche Goldkosten, wenn Sie eine Auktion mit bestehendem Gebot abbrechen." -- Needs review
L["Would you like to load these options in beginner or advanced mode? If you have not used APM, QA3, or ZA before, beginner is recommended. Your selection can always be changed using the \"Hide advanced options\" checkbox in the \"Options\" page."] = "Wollen Sie diese Optionen im Einsteiger oder Erweiterten Modus laden? Wenn Sie bisher weder APM, QA3 oder ZA benutzt haben ist der Einsteigermodus empfehlenswert." -- Needs review
L["You can change the active database profile, so you can have different settings for every character."] = "Sie können das aktive Datenbankprofil wechseln, was Ihnen unterschiedliche Einstellungen für jeden Charakter erlaubt." -- Needs review
L["You can either create a new profile by entering a name in the editbox, or choose one of the already exisiting profiles."] = "Sie können entweder ein neues Profil erstellen in dem Sie einen Namen in das Eingabefeld eintragen, oder Sie wählen eines der bereits vorhandenen Profile aus." -- Needs review
L["You can not blacklist characters whom are on your whitelist."] = "Sie können keine Charaktere auf die Blacklist setzen, die bereits auf Ihrer Whitelist sind." -- Needs review
L["You can not blacklist yourself."] = "Sie können sich nicht selbst auf Ihre Blacklist setzen." -- Needs review
L["You can not whitelist characters whom are on your blacklist."] = "Sie können keine Charaktere auf die Whitelist setzen, die bereits auf Ihrer Blacklist sind." -- Needs review
L["You can set a fixed fallback price for this group, or have the fallback price be automatically calculated to a percentage of a value. If you have multiple different items in this group and use a percentage, the highest value will be used for the entire group."] = "Sie können dieser Gruppe einen festen Rückfallpreis zuweisen oder den Rückfallpreis automatisch als Prozentsatz des Wertes kalkulieren lassen. Wenn sie mehrere unterschiedliche Gegenstände in dieser Gruppe befinden und die prozentuale Kalkulation benutzen wird der höchste Gegenstandswert für die Kalkulation verwendet. " -- Needs review
-- L["You can set a fixed max reset cost, or have it be a percentage of some other value."] = ""
-- L["You can set a fixed min reset price, or have it be a percentage of some other value."] = ""
-- L["You can set a fixed threshold, or have it be a percentage of some other value."] = ""
L["You do not have any players on your blacklist yet."] = "Es befinden sich derzeit keine Spielr auf Ihrer Blacklist." -- Needs review
L["You do not have any players on your whitelist yet."] = "Es befinden sich derzeit keine Spieler auf Ihrer Whitelist."
L["You do not need to add \"%s\", alts are whitelisted automatically."] = "Sie müssen %s nicht hinzufügen, Ihre Zweitcharaktere befinden sich automatisch auf Ihrer Whitelist." -- Needs review
-- L["You don't any groups set to be included in a reset scan."] = ""
-- L["You don't any groups set up."] = ""
-- L["Your auction has not been undercut."] = ""
-- L["You've been undercut."] = ""
