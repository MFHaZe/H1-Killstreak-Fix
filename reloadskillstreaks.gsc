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

#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes\_hud_util;

init()
{
    thread onPlayerConnect();
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned()
{
    level endon("game_ended");
    for(;;)
    {
        self waittill("spawned_player");
        // Execute the scr_game_hardpoints command when the player spawns
        if(level.spawnedPlayers == 1)
        {
            scr_game_hardpoints(1);
        }
    }
}
