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