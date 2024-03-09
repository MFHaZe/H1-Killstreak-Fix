local onGameStart = function ()
    game:executecommand("scr_game_hardpoints 1")
end

level:onnotify("connecting", function ()
    level:onnotifyonce("game_start", onGameStart)
end)
