function on_pre_player_died(event)
    local player = game.players[event.player_index]
    global.pDied = game.players[event.player_index]
    if event.cause.type == 'locomotive' or event.cause.type == 'cargo-wagon' or event.cause.type == 'fluid-wagon' then
	    if #game.players == 1 then
            global.dTick = game.tick
            player.character.health = player.character.prototype.max_health
            player.character.destroy()
            player.set_controller(
            {type = defines.controllers.ghost})
            game.print("Ending game in 11 seconds...")
        end
            --global.pDied = game.players[event.player_index]       0
            game.print("What's the deal with trains?")
            event.cause.surface.create_entity(
            {name = "Seinfeld-Theme", position = event.cause.position})
            --frame = player.gui.center.add{type = "frame", name = "jerry-sprite-frame", direction = "vertical"}
            --frame.add{type = "label", caption = "is this thing on?", name = "test label."}
            jerry_sprite = player.gui.left.add{type = "sprite", name = "jerry-sprite", sprite = "jerry-sprite"}
            jerry_sprite.style.minimal_width = 192
            jerry_sprite.style.minimal_height = 293
    end
end

function gameoverTick(event)
    if global.dTick and (global.dTick + (60*1)) - game.tick <= 0 then
        game.print("Triggering gameover screen.")
        game.set_game_state{game_finished = true}
        global.pDied.gui.destroy()
        --player.gui.left["jerry-sprite"].destroy()
    end
end

script.on_event(defines.events.on_pre_player_died, on_pre_player_died)
script.on_event(defines.events.on_tick, gameoverTick)
script.on_init(function()
    global.pDied = 0
    game.print(global.pDied)
end)
