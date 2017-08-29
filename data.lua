data:extend{
    {
        type = "explosion",
        name = "Seinfeld-Theme",
        animations = {
            {
                filename = "__core__/graphics/empty.png",
                priority = "medium",
                width = 1,
                height = 1,
                frame_count = 1,
                line_length = 100,
                animation_speed = 0.0001,
            },
        },
        light = {intensity = 0, size = 0},
        sound = {
            {
                filename = "__WhatsTheDealWithTrains__/sound/SeinfeldTheme.ogg",
                volume = 1.0,
            },
        },
    },
    {
        type = "sprite",
        name = "jerry-sprite",
        filename = "__WhatsTheDealWithTrains__/graphics/jerry.png",
        priority = "extra-high",
        width = 192,
        height = 293,
    },
}