/*  
 __  __ _____ _   _       _____    
|  \/  |  ___| | | | __ _|__  /___ 
| |\/| | |_  | |_| |/ _` | / // _ \
| |  | |  _| |  _  | (_| |/ /|  __/
|_|  |_|_|   |_| |_|\__,_/____\___|
                                                                  
    Author:         MFHaZe
    Creation Year:  2023
    GitHub:         https://github.com/MFHaZe/H1-Mod-Killstreak-Fix                                                                 
*/


local onGameStart = function ()
    game:executecommand("scr_game_hardpoints 1")
end

level:onnotify("connecting", function ()
    level:onnotifyonce("game_start", onGameStart)
end)
