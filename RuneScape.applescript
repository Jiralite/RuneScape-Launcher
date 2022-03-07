on replace_text(content, search, replace)
	set prevTIDs to AppleScript's text item delimiters
	set AppleScript's text item delimiters to the search
	set the item_list to every text item of content
	set AppleScript's text item delimiters to the replace
	set content to the item_list as string
	set AppleScript's text item delimiters to prevTIDs
	return content
end replace_text

tell application "System Events"
	set appName to get name of (path to me)
	set currentUser to get name of current user
end tell

-- Define the current languages.
set english to "Language=0"
set german to "Language=1"
set french to "Language=2"
set portuguese to "Language=3"

-- Check the name of the application.
set replace to ""
if appName is equal to "RuneScape.app" then set replace to english
if appName is equal to "RuneScape-0.app" then set replace to english
if appName is equal to "RuneScape-1.app" then set replace to german
if appName is equal to "RuneScape-2.app" then set replace to french
if appName is equal to "RuneScape-3.app" then set replace to portuguese

-- Stop if we cannot interpret the provided name.
if replace is equal to "" then return display alert "Error detecting language." message "Cannot interpret the provided name. It needs to be one of the following:
¥ RuneScape
¥ RuneScape-0
¥ RuneScape-1
¥ RuneScape-2
¥ RuneScape-3" as critical

-- Ensure the language is modified.
set theFile to "/Users/" & currentUser & "/Jagex/launcher/preferences.cfg"
set theContent to read theFile as Çclass utf8È
set newContent to replace_text(theContent, english, replace)
if newContent is equal to theContent then set newContent to replace_text(theContent, german, replace)
if newContent is equal to theContent then set newContent to replace_text(theContent, french, replace)
if newContent is equal to theContent then set newContent to replace_text(theContent, portuguese, replace)
set fd to open for access theFile with write permission
set eof of fd to 0
write newContent to fd as Çclass utf8È
close access fd

-- Open RuneScape!
do shell script "open -n '/Applications/RuneScape.app'"